
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int sb; } ;
typedef int nid_t ;


 struct f2fs_sb_info* F2FS_P_SB (struct page*) ;
 int f2fs_match_ino ;
 int f2fs_update_inode (struct inode*,struct page*) ;
 struct inode* find_inode_nowait (int ,int ,int ,int *) ;
 int ino_of_node (struct page*) ;
 int iput (struct inode*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static bool flush_dirty_inode(struct page *page)
{
 struct f2fs_sb_info *sbi = F2FS_P_SB(page);
 struct inode *inode;
 nid_t ino = ino_of_node(page);

 inode = find_inode_nowait(sbi->sb, ino, f2fs_match_ino, ((void*)0));
 if (!inode)
  return 0;

 f2fs_update_inode(inode, page);
 unlock_page(page);

 iput(inode);
 return 1;
}
