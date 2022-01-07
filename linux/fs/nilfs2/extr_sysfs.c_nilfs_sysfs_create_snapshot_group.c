
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {int ns_dev_kobj; TYPE_1__* ns_dev_subgroups; } ;
struct TYPE_4__ {int kset; } ;
struct nilfs_root {int cno; TYPE_2__ snapshot_kobj; int snapshot_kobj_unregister; struct the_nilfs* nilfs; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {struct kobject sg_mounted_snapshots_kobj; } ;


 int NILFS_CPTREE_CURRENT_CNO ;
 int init_completion (int *) ;
 int kobject_init_and_add (TYPE_2__*,int *,struct kobject*,char*,...) ;
 int nilfs_kset ;
 int nilfs_snapshot_ktype ;

int nilfs_sysfs_create_snapshot_group(struct nilfs_root *root)
{
 struct the_nilfs *nilfs;
 struct kobject *parent;
 int err;

 nilfs = root->nilfs;
 parent = &nilfs->ns_dev_subgroups->sg_mounted_snapshots_kobj;
 root->snapshot_kobj.kset = nilfs_kset;
 init_completion(&root->snapshot_kobj_unregister);

 if (root->cno == NILFS_CPTREE_CURRENT_CNO) {
  err = kobject_init_and_add(&root->snapshot_kobj,
         &nilfs_snapshot_ktype,
         &nilfs->ns_dev_kobj,
         "current_checkpoint");
 } else {
  err = kobject_init_and_add(&root->snapshot_kobj,
         &nilfs_snapshot_ktype,
         parent,
         "%llu", root->cno);
 }

 if (err)
  return err;

 return 0;
}
