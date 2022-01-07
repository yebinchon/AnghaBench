
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ino; int i_mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int node_changed; } ;


 int ENOMEM ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int ) ;
 int f2fs_convert_inline_page (struct dnode_of_data*,struct page*) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 struct page* f2fs_grab_cache_page (int ,int ,int) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,struct page*,struct page*,int ) ;

int f2fs_convert_inline_inode(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct dnode_of_data dn;
 struct page *ipage, *page;
 int err = 0;

 if (!f2fs_has_inline_data(inode))
  return 0;

 page = f2fs_grab_cache_page(inode->i_mapping, 0, 0);
 if (!page)
  return -ENOMEM;

 f2fs_lock_op(sbi);

 ipage = f2fs_get_node_page(sbi, inode->i_ino);
 if (IS_ERR(ipage)) {
  err = PTR_ERR(ipage);
  goto out;
 }

 set_new_dnode(&dn, inode, ipage, ipage, 0);

 if (f2fs_has_inline_data(inode))
  err = f2fs_convert_inline_page(&dn, page);

 f2fs_put_dnode(&dn);
out:
 f2fs_unlock_op(sbi);

 f2fs_put_page(page, 1);

 f2fs_balance_fs(sbi, dn.node_changed);

 return err;
}
