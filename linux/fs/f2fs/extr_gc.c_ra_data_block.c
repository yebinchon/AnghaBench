
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ino; struct address_space* i_mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int in_list; int retry; struct page* encrypted_page; scalar_t__ old_blkaddr; scalar_t__ new_blkaddr; struct page* page; int op_flags; int op; int temp; int type; int ino; struct f2fs_sb_info* sbi; } ;
struct extent_info {scalar_t__ fofs; scalar_t__ blk; int member_2; int member_1; int member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int COLD ;
 int DATA ;
 int DATA_GENERIC_ENHANCE ;
 int DATA_GENERIC_ENHANCE_READ ;
 int EFSCORRUPTED ;
 int ENOENT ;
 int ENOMEM ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FGP_CREAT ;
 int FGP_LOCK ;
 int GFP_NOFS ;
 int LOOKUP_NODE ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 int REQ_OP_READ ;
 int __is_valid_data_blkaddr (scalar_t__) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 struct page* f2fs_grab_cache_page (struct address_space*,scalar_t__,int) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,scalar_t__,int ) ;
 scalar_t__ f2fs_lookup_extent_cache (struct inode*,scalar_t__,struct extent_info*) ;
 struct page* f2fs_pagecache_get_page (int ,scalar_t__,int,int ) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_submit_page_bio (struct f2fs_io_info*) ;
 int f2fs_wait_on_block_writeback (struct inode*,scalar_t__) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ra_data_block(struct inode *inode, pgoff_t index)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct address_space *mapping = inode->i_mapping;
 struct dnode_of_data dn;
 struct page *page;
 struct extent_info ei = {0, 0, 0};
 struct f2fs_io_info fio = {
  .sbi = sbi,
  .ino = inode->i_ino,
  .type = DATA,
  .temp = COLD,
  .op = REQ_OP_READ,
  .op_flags = 0,
  .encrypted_page = ((void*)0),
  .in_list = 0,
  .retry = 0,
 };
 int err;

 page = f2fs_grab_cache_page(mapping, index, 1);
 if (!page)
  return -ENOMEM;

 if (f2fs_lookup_extent_cache(inode, index, &ei)) {
  dn.data_blkaddr = ei.blk + index - ei.fofs;
  if (unlikely(!f2fs_is_valid_blkaddr(sbi, dn.data_blkaddr,
      DATA_GENERIC_ENHANCE_READ))) {
   err = -EFSCORRUPTED;
   goto put_page;
  }
  goto got_it;
 }

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
 err = f2fs_get_dnode_of_data(&dn, index, LOOKUP_NODE);
 if (err)
  goto put_page;
 f2fs_put_dnode(&dn);

 if (!__is_valid_data_blkaddr(dn.data_blkaddr)) {
  err = -ENOENT;
  goto put_page;
 }
 if (unlikely(!f2fs_is_valid_blkaddr(sbi, dn.data_blkaddr,
      DATA_GENERIC_ENHANCE))) {
  err = -EFSCORRUPTED;
  goto put_page;
 }
got_it:

 fio.page = page;
 fio.new_blkaddr = fio.old_blkaddr = dn.data_blkaddr;





 f2fs_wait_on_page_writeback(page, DATA, 1, 1);

 f2fs_wait_on_block_writeback(inode, dn.data_blkaddr);

 fio.encrypted_page = f2fs_pagecache_get_page(META_MAPPING(sbi),
     dn.data_blkaddr,
     FGP_LOCK | FGP_CREAT, GFP_NOFS);
 if (!fio.encrypted_page) {
  err = -ENOMEM;
  goto put_page;
 }

 err = f2fs_submit_page_bio(&fio);
 if (err)
  goto put_encrypted_page;
 f2fs_put_page(fio.encrypted_page, 0);
 f2fs_put_page(page, 1);
 return 0;
put_encrypted_page:
 f2fs_put_page(fio.encrypted_page, 1);
put_page:
 f2fs_put_page(page, 1);
 return err;
}
