
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_filecheck_sysfs_entry {TYPE_1__* fs_fcheck; } ;
struct TYPE_2__ {unsigned int fc_size; unsigned int fc_done; unsigned int fc_max; int fc_lock; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int EINVAL ;
 int ML_NOTICE ;
 unsigned int OCFS2_FILECHECK_MAXSIZE ;
 unsigned int OCFS2_FILECHECK_MINSIZE ;
 int mlog (int ,char*,unsigned int,unsigned int) ;
 int ocfs2_filecheck_erase_entries (struct ocfs2_filecheck_sysfs_entry*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
ocfs2_filecheck_adjust_max(struct ocfs2_filecheck_sysfs_entry *ent,
      unsigned int len)
{
 int ret;

 if ((len < OCFS2_FILECHECK_MINSIZE) || (len > OCFS2_FILECHECK_MAXSIZE))
  return -EINVAL;

 spin_lock(&ent->fs_fcheck->fc_lock);
 if (len < (ent->fs_fcheck->fc_size - ent->fs_fcheck->fc_done)) {
  mlog(ML_NOTICE,
  "Cannot set online file check maximum entry number "
  "to %u due to too many pending entries(%u)\n",
  len, ent->fs_fcheck->fc_size - ent->fs_fcheck->fc_done);
  ret = -EBUSY;
 } else {
  if (len < ent->fs_fcheck->fc_size)
   BUG_ON(!ocfs2_filecheck_erase_entries(ent,
    ent->fs_fcheck->fc_size - len));

  ent->fs_fcheck->fc_max = len;
  ret = 0;
 }
 spin_unlock(&ent->fs_fcheck->fc_lock);

 return ret;
}
