
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fs_kobj_unregister; int fs_kobj; int fs_fcheck; } ;
struct ocfs2_super {TYPE_1__ osb_fc_ent; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int ocfs2_filecheck_sysfs_free (TYPE_1__*) ;
 int wait_for_completion (int *) ;

void ocfs2_filecheck_remove_sysfs(struct ocfs2_super *osb)
{
 if (!osb->osb_fc_ent.fs_fcheck)
  return;

 kobject_del(&osb->osb_fc_ent.fs_kobj);
 kobject_put(&osb->osb_fc_ent.fs_kobj);
 wait_for_completion(&osb->osb_fc_ent.fs_kobj_unregister);
 ocfs2_filecheck_sysfs_free(&osb->osb_fc_ent);
}
