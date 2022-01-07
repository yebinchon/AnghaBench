
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logic_pio_hwaddr {scalar_t__ io_start; scalar_t__ hw_start; } ;
typedef scalar_t__ resource_size_t ;


 struct logic_pio_hwaddr* find_io_range (unsigned long) ;

resource_size_t logic_pio_to_hwaddr(unsigned long pio)
{
 struct logic_pio_hwaddr *range;

 range = find_io_range(pio);
 if (range)
  return range->hw_start + pio - range->io_start;

 return (resource_size_t)~0;
}
