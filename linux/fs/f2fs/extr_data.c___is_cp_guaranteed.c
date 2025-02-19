
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct inode {scalar_t__ i_ino; int i_mode; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {struct inode* host; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_META_INO (struct f2fs_sb_info*) ;
 scalar_t__ F2FS_NODE_INO (struct f2fs_sb_info*) ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ is_cold_data (struct page*) ;

__attribute__((used)) static bool __is_cp_guaranteed(struct page *page)
{
 struct address_space *mapping = page->mapping;
 struct inode *inode;
 struct f2fs_sb_info *sbi;

 if (!mapping)
  return 0;

 inode = mapping->host;
 sbi = F2FS_I_SB(inode);

 if (inode->i_ino == F2FS_META_INO(sbi) ||
   inode->i_ino == F2FS_NODE_INO(sbi) ||
   S_ISDIR(inode->i_mode) ||
   (S_ISREG(inode->i_mode) &&
   (f2fs_is_atomic_file(inode) || IS_NOQUOTA(inode))) ||
   is_cold_data(page))
  return 1;
 return 0;
}
