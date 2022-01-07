
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct extent_info {scalar_t__ blk; scalar_t__ fofs; int member_2; int member_1; int member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int DATA_GENERIC_ENHANCE ;
 int DATA_GENERIC_ENHANCE_READ ;
 int EFSCORRUPTED ;
 int ENOENT ;
 int ENOMEM ;
 struct page* ERR_PTR (int) ;
 int F2FS_I_SB (struct inode*) ;
 int LOOKUP_NODE ;
 scalar_t__ NEW_ADDR ;
 scalar_t__ NULL_ADDR ;
 int PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 struct page* f2fs_grab_cache_page (struct address_space*,scalar_t__,int) ;
 int f2fs_is_valid_blkaddr (int ,scalar_t__,int ) ;
 scalar_t__ f2fs_lookup_extent_cache (struct inode*,scalar_t__,struct extent_info*) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_submit_page_read (struct inode*,struct page*,scalar_t__) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,int ,int ) ;

struct page *f2fs_get_read_data_page(struct inode *inode, pgoff_t index,
      int op_flags, bool for_write)
{
 struct address_space *mapping = inode->i_mapping;
 struct dnode_of_data dn;
 struct page *page;
 struct extent_info ei = {0,0,0};
 int err;

 page = f2fs_grab_cache_page(mapping, index, for_write);
 if (!page)
  return ERR_PTR(-ENOMEM);

 if (f2fs_lookup_extent_cache(inode, index, &ei)) {
  dn.data_blkaddr = ei.blk + index - ei.fofs;
  if (!f2fs_is_valid_blkaddr(F2FS_I_SB(inode), dn.data_blkaddr,
      DATA_GENERIC_ENHANCE_READ)) {
   err = -EFSCORRUPTED;
   goto put_err;
  }
  goto got_it;
 }

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
 err = f2fs_get_dnode_of_data(&dn, index, LOOKUP_NODE);
 if (err)
  goto put_err;
 f2fs_put_dnode(&dn);

 if (unlikely(dn.data_blkaddr == NULL_ADDR)) {
  err = -ENOENT;
  goto put_err;
 }
 if (dn.data_blkaddr != NEW_ADDR &&
   !f2fs_is_valid_blkaddr(F2FS_I_SB(inode),
      dn.data_blkaddr,
      DATA_GENERIC_ENHANCE)) {
  err = -EFSCORRUPTED;
  goto put_err;
 }
got_it:
 if (PageUptodate(page)) {
  unlock_page(page);
  return page;
 }
 if (dn.data_blkaddr == NEW_ADDR) {
  zero_user_segment(page, 0, PAGE_SIZE);
  if (!PageUptodate(page))
   SetPageUptodate(page);
  unlock_page(page);
  return page;
 }

 err = f2fs_submit_page_read(inode, page, dn.data_blkaddr);
 if (err)
  goto put_err;
 return page;

put_err:
 f2fs_put_page(page, 1);
 return ERR_PTR(err);
}
