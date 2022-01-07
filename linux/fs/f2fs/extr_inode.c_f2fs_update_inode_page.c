
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int cond_resched () ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_stop_checkpoint (struct f2fs_sb_info*,int) ;
 int f2fs_update_inode (struct inode*,struct page*) ;

void f2fs_update_inode_page(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct page *node_page;
retry:
 node_page = f2fs_get_node_page(sbi, inode->i_ino);
 if (IS_ERR(node_page)) {
  int err = PTR_ERR(node_page);
  if (err == -ENOMEM) {
   cond_resched();
   goto retry;
  } else if (err != -ENOENT) {
   f2fs_stop_checkpoint(sbi, 0);
  }
  return;
 }
 f2fs_update_inode(inode, node_page);
 f2fs_put_page(node_page, 1);
}
