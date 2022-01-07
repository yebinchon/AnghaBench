
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fuse_kobj ;
 int kobject_put (int ) ;
 int sysfs_remove_mount_point (int ,char*) ;

__attribute__((used)) static void fuse_sysfs_cleanup(void)
{
 sysfs_remove_mount_point(fuse_kobj, "connections");
 kobject_put(fuse_kobj);
}
