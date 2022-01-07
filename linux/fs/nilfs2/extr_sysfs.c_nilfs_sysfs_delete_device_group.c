
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_dev_subgroups; int ns_dev_kobj; } ;


 int kfree (int ) ;
 int kobject_del (int *) ;
 int nilfs_sysfs_delete_checkpoints_group (struct the_nilfs*) ;
 int nilfs_sysfs_delete_mounted_snapshots_group (struct the_nilfs*) ;
 int nilfs_sysfs_delete_segctor_group (struct the_nilfs*) ;
 int nilfs_sysfs_delete_segments_group (struct the_nilfs*) ;
 int nilfs_sysfs_delete_superblock_group (struct the_nilfs*) ;

void nilfs_sysfs_delete_device_group(struct the_nilfs *nilfs)
{
 nilfs_sysfs_delete_mounted_snapshots_group(nilfs);
 nilfs_sysfs_delete_checkpoints_group(nilfs);
 nilfs_sysfs_delete_segments_group(nilfs);
 nilfs_sysfs_delete_superblock_group(nilfs);
 nilfs_sysfs_delete_segctor_group(nilfs);
 kobject_del(&nilfs->ns_dev_kobj);
 kfree(nilfs->ns_dev_subgroups);
}
