
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef enum count_type { ____Placeholder_count_type } count_type ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_META_INO (struct f2fs_sb_info*) ;
 scalar_t__ F2FS_NODE_INO (struct f2fs_sb_info*) ;
 int F2FS_RD_DATA ;
 int F2FS_RD_META ;
 int F2FS_RD_NODE ;
 struct address_space* page_file_mapping (struct page*) ;

__attribute__((used)) static enum count_type __read_io_type(struct page *page)
{
 struct address_space *mapping = page_file_mapping(page);

 if (mapping) {
  struct inode *inode = mapping->host;
  struct f2fs_sb_info *sbi = F2FS_I_SB(inode);

  if (inode->i_ino == F2FS_META_INO(sbi))
   return F2FS_RD_META;

  if (inode->i_ino == F2FS_NODE_INO(sbi))
   return F2FS_RD_NODE;
 }
 return F2FS_RD_DATA;
}
