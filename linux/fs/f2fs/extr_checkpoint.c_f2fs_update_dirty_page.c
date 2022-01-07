
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mode; } ;
struct f2fs_sb_info {int * inode_lock; } ;
typedef enum inode_type { ____Placeholder_inode_type } inode_type ;


 int DATA_FLUSH ;
 int DIR_INODE ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FILE_INODE ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int __add_dirty_inode (struct inode*,int) ;
 int f2fs_set_page_private (struct page*,int ) ;
 int f2fs_trace_pid (struct page*) ;
 int inode_inc_dirty_pages (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

void f2fs_update_dirty_page(struct inode *inode, struct page *page)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 enum inode_type type = S_ISDIR(inode->i_mode) ? DIR_INODE : FILE_INODE;

 if (!S_ISDIR(inode->i_mode) && !S_ISREG(inode->i_mode) &&
   !S_ISLNK(inode->i_mode))
  return;

 spin_lock(&sbi->inode_lock[type]);
 if (type != FILE_INODE || test_opt(sbi, DATA_FLUSH))
  __add_dirty_inode(inode, type);
 inode_inc_dirty_pages(inode);
 spin_unlock(&sbi->inode_lock[type]);

 f2fs_set_page_private(page, 0);
 f2fs_trace_pid(page);
}
