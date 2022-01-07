
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_root {int snapshot_kobj; } ;


 int kobject_del (int *) ;

void nilfs_sysfs_delete_snapshot_group(struct nilfs_root *root)
{
 kobject_del(&root->snapshot_kobj);
}
