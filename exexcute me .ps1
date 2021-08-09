do
{
    $disk1 = Get-PSDrive D | Select-Object -ExpandProperty  Free ; $disk1=($disk1/1073741824);

    while ($disk1 -ge 101)
    {
        robocopy "d:\" "E:\" *.exe /mov; sleep 10;
        $disk1 = Get-PSDrive D | Select-Object -ExpandProperty  Free ; $disk1=($disk1/1073741824);

    }
    $disk2 = Get-PSDrive F | Select-Object -ExpandProperty  Free ; $disk2=($disk2/1073741824);

    while ($disk2 -ge 101)
    {
        robocopy "d:\" "F:\" *.exe /mov; sleep 10;
        $disk2 = Get-PSDrive F | Select-Object -ExpandProperty  Free ; $disk2=($disk2/1073741824);
    }
    $disk3 = Get-PSDrive G | Select-Object -ExpandProperty  Free ; $disk3=($disk3/1073741824);

    while ($disk3 -ge 101)
    {
        robocopy "d:\" "G:\" *.exe /mov; sleep 10;
        $disk3 = Get-PSDrive G | Select-Object -ExpandProperty  Free ; $disk3=($disk3/1073741824);
    }

}
while ($true)
