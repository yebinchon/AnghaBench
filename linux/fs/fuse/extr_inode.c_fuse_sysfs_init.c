
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int fs_kobj ;
 int fuse_kobj ;
 int kobject_create_and_add (char*,int ) ;
 int kobject_put (int ) ;
 int sysfs_create_mount_point (int ,char*) ;

__attribute__((used)) static int fuse_sysfs_init(void)
{
 int err;

 fuse_kobj = kobject_create_and_add("fuse", fs_kobj);
 if (!fuse_kobj) {
  err = -ENOMEM;
  goto out_err;
 }

 err = sysfs_create_mount_point(fuse_kobj, "connections");
 if (err)
  goto out_fuse_unregister;

 return 0;

 out_fuse_unregister:
 kobject_put(fuse_kobj);
 out_err:
 return err;
}
