
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fs_kobj ;
 int sysfs_create_mount_point (int ,char*) ;

__attribute__((used)) static int smk_init_sysfs(void)
{
 return sysfs_create_mount_point(fs_kobj, "smackfs");
}
