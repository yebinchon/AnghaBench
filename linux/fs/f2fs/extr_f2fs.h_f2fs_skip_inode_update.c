
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mtime; int i_ctime; int i_atime; } ;
struct f2fs_sb_info {int * inode_lock; } ;
struct TYPE_2__ {int last_disk_size; int i_sem; int i_crtime; scalar_t__ i_disk_time; int gdirty_list; } ;


 size_t DIRTY_META ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_AUTO_RECOVER ;
 int PAGE_MASK ;
 int down_read (int *) ;
 scalar_t__ file_keep_isize (struct inode*) ;
 int i_size_read (struct inode*) ;
 int is_inode_flag_set (struct inode*,int ) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timespec64_equal (scalar_t__,int *) ;
 int up_read (int *) ;

__attribute__((used)) static inline bool f2fs_skip_inode_update(struct inode *inode, int dsync)
{
 bool ret;

 if (dsync) {
  struct f2fs_sb_info *sbi = F2FS_I_SB(inode);

  spin_lock(&sbi->inode_lock[DIRTY_META]);
  ret = list_empty(&F2FS_I(inode)->gdirty_list);
  spin_unlock(&sbi->inode_lock[DIRTY_META]);
  return ret;
 }
 if (!is_inode_flag_set(inode, FI_AUTO_RECOVER) ||
   file_keep_isize(inode) ||
   i_size_read(inode) & ~PAGE_MASK)
  return 0;

 if (!timespec64_equal(F2FS_I(inode)->i_disk_time, &inode->i_atime))
  return 0;
 if (!timespec64_equal(F2FS_I(inode)->i_disk_time + 1, &inode->i_ctime))
  return 0;
 if (!timespec64_equal(F2FS_I(inode)->i_disk_time + 2, &inode->i_mtime))
  return 0;
 if (!timespec64_equal(F2FS_I(inode)->i_disk_time + 3,
      &F2FS_I(inode)->i_crtime))
  return 0;

 down_read(&F2FS_I(inode)->i_sem);
 ret = F2FS_I(inode)->last_disk_size == i_size_read(inode);
 up_read(&F2FS_I(inode)->i_sem);

 return ret;
}
