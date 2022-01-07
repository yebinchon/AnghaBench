
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int wpan_phy_class ;

void wpan_phy_sysfs_exit(void)
{
 class_unregister(&wpan_phy_class);
}
