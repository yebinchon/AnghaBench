
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {int * inode_lock; } ;
struct TYPE_2__ {int gdirty_list; } ;


 size_t DIRTY_META ;
 int F2FS_DIRTY_IMETA ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_AUTO_RECOVER ;
 int FI_DIRTY_INODE ;
 int clear_inode_flag (struct inode*,int ) ;
 int dec_page_count (struct f2fs_sb_info*,int ) ;
 int is_inode_flag_set (struct inode*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat_dec_dirty_inode (struct f2fs_sb_info*,size_t) ;

void f2fs_inode_synced(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);

 spin_lock(&sbi->inode_lock[DIRTY_META]);
 if (!is_inode_flag_set(inode, FI_DIRTY_INODE)) {
  spin_unlock(&sbi->inode_lock[DIRTY_META]);
  return;
 }
 if (!list_empty(&F2FS_I(inode)->gdirty_list)) {
  list_del_init(&F2FS_I(inode)->gdirty_list);
  dec_page_count(sbi, F2FS_DIRTY_IMETA);
 }
 clear_inode_flag(inode, FI_DIRTY_INODE);
 clear_inode_flag(inode, FI_AUTO_RECOVER);
 stat_dec_dirty_inode(F2FS_I_SB(inode), DIRTY_META);
 spin_unlock(&sbi->inode_lock[DIRTY_META]);
}
