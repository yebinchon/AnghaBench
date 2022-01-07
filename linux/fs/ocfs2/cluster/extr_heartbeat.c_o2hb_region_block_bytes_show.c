
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int hr_block_bytes; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_o2hb_region (struct config_item*) ;

__attribute__((used)) static ssize_t o2hb_region_block_bytes_show(struct config_item *item,
         char *page)
{
 return sprintf(page, "%u\n", to_o2hb_region(item)->hr_block_bytes);
}
