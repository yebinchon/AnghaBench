
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int ENOMEM ;
 struct page* ERR_PTR (int) ;
 int F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ NEW_ADDR ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int f2fs_bug_on (int ,struct page*) ;
 struct page* f2fs_get_lock_data_page (struct inode*,int ,int) ;
 struct page* f2fs_grab_cache_page (struct address_space*,int ,int) ;
 int f2fs_i_size_write (struct inode*,int) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_reserve_block (struct dnode_of_data*,int ) ;
 int i_size_read (struct inode*) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,struct page*,int *,int ) ;
 int zero_user_segment (struct page*,int ,int ) ;

struct page *f2fs_get_new_data_page(struct inode *inode,
  struct page *ipage, pgoff_t index, bool new_i_size)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;
 struct dnode_of_data dn;
 int err;

 page = f2fs_grab_cache_page(mapping, index, 1);
 if (!page) {




  f2fs_put_page(ipage, 1);
  return ERR_PTR(-ENOMEM);
 }

 set_new_dnode(&dn, inode, ipage, ((void*)0), 0);
 err = f2fs_reserve_block(&dn, index);
 if (err) {
  f2fs_put_page(page, 1);
  return ERR_PTR(err);
 }
 if (!ipage)
  f2fs_put_dnode(&dn);

 if (PageUptodate(page))
  goto got_it;

 if (dn.data_blkaddr == NEW_ADDR) {
  zero_user_segment(page, 0, PAGE_SIZE);
  if (!PageUptodate(page))
   SetPageUptodate(page);
 } else {
  f2fs_put_page(page, 1);


  f2fs_bug_on(F2FS_I_SB(inode), ipage);
  page = f2fs_get_lock_data_page(inode, index, 1);
  if (IS_ERR(page))
   return page;
 }
got_it:
 if (new_i_size && i_size_read(inode) <
    ((loff_t)(index + 1) << PAGE_SHIFT))
  f2fs_i_size_write(inode, ((loff_t)(index + 1) << PAGE_SHIFT));
 return page;
}
