
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_filecheck_sysfs_entry {TYPE_1__* fs_fcheck; } ;
struct ocfs2_filecheck_entry {int fe_done; } ;
struct TYPE_2__ {int fc_lock; int fc_done; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
ocfs2_filecheck_done_entry(struct ocfs2_filecheck_sysfs_entry *ent,
      struct ocfs2_filecheck_entry *entry)
{
 spin_lock(&ent->fs_fcheck->fc_lock);
 entry->fe_done = 1;
 ent->fs_fcheck->fc_done++;
 spin_unlock(&ent->fs_fcheck->fc_lock);
}
