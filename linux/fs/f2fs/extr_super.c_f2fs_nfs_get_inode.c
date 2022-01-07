
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct f2fs_sb_info {int dummy; } ;


 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 struct f2fs_sb_info* F2FS_SB (struct super_block*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ f2fs_check_nid_range (struct f2fs_sb_info*,int ) ;
 struct inode* f2fs_iget (struct super_block*,int ) ;
 int iput (struct inode*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct inode *f2fs_nfs_get_inode(struct super_block *sb,
  u64 ino, u32 generation)
{
 struct f2fs_sb_info *sbi = F2FS_SB(sb);
 struct inode *inode;

 if (f2fs_check_nid_range(sbi, ino))
  return ERR_PTR(-ESTALE);






 inode = f2fs_iget(sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 if (unlikely(generation && inode->i_generation != generation)) {

  iput(inode);
  return ERR_PTR(-ESTALE);
 }
 return inode;
}
