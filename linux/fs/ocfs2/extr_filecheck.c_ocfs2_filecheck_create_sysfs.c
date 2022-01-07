
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kset; } ;
struct ocfs2_filecheck_sysfs_entry {struct ocfs2_filecheck* fs_fcheck; TYPE_1__ fs_kobj; int fs_kobj_unregister; } ;
struct ocfs2_super {int osb_dev_kset; struct ocfs2_filecheck_sysfs_entry osb_fc_ent; } ;
struct ocfs2_filecheck {scalar_t__ fc_done; scalar_t__ fc_size; int fc_max; int fc_lock; int fc_head; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int OCFS2_FILECHECK_MINSIZE ;
 int init_completion (int *) ;
 int kfree (struct ocfs2_filecheck*) ;
 struct ocfs2_filecheck* kmalloc (int,int ) ;
 int kobject_init_and_add (TYPE_1__*,int *,int *,char*) ;
 int kobject_put (TYPE_1__*) ;
 int ocfs2_ktype_filecheck ;
 int spin_lock_init (int *) ;

int ocfs2_filecheck_create_sysfs(struct ocfs2_super *osb)
{
 int ret;
 struct ocfs2_filecheck *fcheck;
 struct ocfs2_filecheck_sysfs_entry *entry = &osb->osb_fc_ent;

 fcheck = kmalloc(sizeof(struct ocfs2_filecheck), GFP_NOFS);
 if (!fcheck)
  return -ENOMEM;

 INIT_LIST_HEAD(&fcheck->fc_head);
 spin_lock_init(&fcheck->fc_lock);
 fcheck->fc_max = OCFS2_FILECHECK_MINSIZE;
 fcheck->fc_size = 0;
 fcheck->fc_done = 0;

 entry->fs_kobj.kset = osb->osb_dev_kset;
 init_completion(&entry->fs_kobj_unregister);
 ret = kobject_init_and_add(&entry->fs_kobj, &ocfs2_ktype_filecheck,
     ((void*)0), "filecheck");
 if (ret) {
  kobject_put(&entry->fs_kobj);
  kfree(fcheck);
  return ret;
 }

 entry->fs_fcheck = fcheck;
 return 0;
}
