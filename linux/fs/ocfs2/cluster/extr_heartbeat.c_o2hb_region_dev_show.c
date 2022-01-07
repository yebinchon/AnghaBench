
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef unsigned int ssize_t ;
struct TYPE_2__ {char* hr_dev_name; scalar_t__ hr_bdev; } ;


 unsigned int sprintf (char*,char*,char*) ;
 TYPE_1__* to_o2hb_region (struct config_item*) ;

__attribute__((used)) static ssize_t o2hb_region_dev_show(struct config_item *item, char *page)
{
 unsigned int ret = 0;

 if (to_o2hb_region(item)->hr_bdev)
  ret = sprintf(page, "%s\n", to_o2hb_region(item)->hr_dev_name);

 return ret;
}
