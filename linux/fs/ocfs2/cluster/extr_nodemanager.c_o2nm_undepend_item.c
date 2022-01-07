
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;


 int configfs_undepend_item (struct config_item*) ;

void o2nm_undepend_item(struct config_item *item)
{
 configfs_undepend_item(item);
}
