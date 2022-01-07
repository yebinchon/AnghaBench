
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_register (int *) ;
 int wpan_phy_class ;

int wpan_phy_sysfs_init(void)
{
 return class_register(&wpan_phy_class);
}
