
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_kobj; } ;


 int kobject_put (int *) ;
 int lock_module_group ;
 int sysfs_remove_group (int *,int *) ;
 int sysfs_remove_link (int *,char*) ;
 int tune_group ;

void gfs2_sys_fs_del(struct gfs2_sbd *sdp)
{
 sysfs_remove_link(&sdp->sd_kobj, "device");
 sysfs_remove_group(&sdp->sd_kobj, &tune_group);
 sysfs_remove_group(&sdp->sd_kobj, &lock_module_group);
 kobject_put(&sdp->sd_kobj);
}
