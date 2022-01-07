
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {unsigned long i_ino; } ;
struct f2fs_sb_info {int * inode_lock; } ;
struct TYPE_2__ {int gdirty_list; } ;


 size_t DIRTY_META ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_DIRTY_INODE ;
 struct inode* igrab (struct inode*) ;
 int is_inode_flag_set (struct inode*,int ) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int f2fs_match_ino(struct inode *inode, unsigned long ino, void *data)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 bool clean;

 if (inode->i_ino != ino)
  return 0;

 if (!is_inode_flag_set(inode, FI_DIRTY_INODE))
  return 0;

 spin_lock(&sbi->inode_lock[DIRTY_META]);
 clean = list_empty(&F2FS_I(inode)->gdirty_list);
 spin_unlock(&sbi->inode_lock[DIRTY_META]);

 if (clean)
  return 0;

 inode = igrab(inode);
 if (!inode)
  return 0;
 return 1;
}
