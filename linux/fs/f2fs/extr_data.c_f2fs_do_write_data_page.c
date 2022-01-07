
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct node_info {int version; } ;
struct inode {int dummy; } ;
struct f2fs_io_info {scalar_t__ old_blkaddr; scalar_t__ need_lock; int sbi; int version; struct page* page; int encrypted_page; } ;
struct extent_info {scalar_t__ blk; scalar_t__ fofs; int member_2; int member_1; int member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; int nid; } ;
struct TYPE_2__ {struct inode* host; } ;


 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int DATA_GENERIC_ENHANCE ;
 int EAGAIN ;
 int EFSCORRUPTED ;
 int FI_APPEND_WRITE ;
 int FI_FIRST_BLOCK_WRITTEN ;
 int FI_UPDATE_WRITE ;
 int IPU ;
 scalar_t__ LOCK_DONE ;
 scalar_t__ LOCK_REQ ;
 scalar_t__ LOCK_RETRY ;
 int LOOKUP_NODE ;
 scalar_t__ NULL_ADDR ;
 int OPU ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ __is_valid_data_blkaddr (scalar_t__) ;
 int clear_cold_data (struct page*) ;
 int encrypt_one_page (struct f2fs_io_info*) ;
 int end_page_writeback (struct page*) ;
 scalar_t__ f2fs_encrypted_file (struct inode*) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 int f2fs_get_node_info (int ,int ,struct node_info*) ;
 int f2fs_inplace_write_data (struct f2fs_io_info*) ;
 int f2fs_is_valid_blkaddr (int ,scalar_t__,int ) ;
 scalar_t__ f2fs_lookup_extent_cache (struct inode*,scalar_t__,struct extent_info*) ;
 int f2fs_outplace_write_data (struct dnode_of_data*,struct f2fs_io_info*) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_trylock_op (int ) ;
 int f2fs_unlock_op (int ) ;
 int fscrypt_finalize_bounce_page (int *) ;
 scalar_t__ need_inplace_update (struct f2fs_io_info*) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_page_writeback (struct page*) ;
 int trace_f2fs_do_write_data_page (struct page*,int ) ;

int f2fs_do_write_data_page(struct f2fs_io_info *fio)
{
 struct page *page = fio->page;
 struct inode *inode = page->mapping->host;
 struct dnode_of_data dn;
 struct extent_info ei = {0,0,0};
 struct node_info ni;
 bool ipu_force = 0;
 int err = 0;

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
 if (need_inplace_update(fio) &&
   f2fs_lookup_extent_cache(inode, page->index, &ei)) {
  fio->old_blkaddr = ei.blk + page->index - ei.fofs;

  if (!f2fs_is_valid_blkaddr(fio->sbi, fio->old_blkaddr,
      DATA_GENERIC_ENHANCE))
   return -EFSCORRUPTED;

  ipu_force = 1;
  fio->need_lock = LOCK_DONE;
  goto got_it;
 }


 if (fio->need_lock == LOCK_REQ && !f2fs_trylock_op(fio->sbi))
  return -EAGAIN;

 err = f2fs_get_dnode_of_data(&dn, page->index, LOOKUP_NODE);
 if (err)
  goto out;

 fio->old_blkaddr = dn.data_blkaddr;


 if (fio->old_blkaddr == NULL_ADDR) {
  ClearPageUptodate(page);
  clear_cold_data(page);
  goto out_writepage;
 }
got_it:
 if (__is_valid_data_blkaddr(fio->old_blkaddr) &&
  !f2fs_is_valid_blkaddr(fio->sbi, fio->old_blkaddr,
      DATA_GENERIC_ENHANCE)) {
  err = -EFSCORRUPTED;
  goto out_writepage;
 }




 if (ipu_force ||
  (__is_valid_data_blkaddr(fio->old_blkaddr) &&
     need_inplace_update(fio))) {
  err = encrypt_one_page(fio);
  if (err)
   goto out_writepage;

  set_page_writeback(page);
  ClearPageError(page);
  f2fs_put_dnode(&dn);
  if (fio->need_lock == LOCK_REQ)
   f2fs_unlock_op(fio->sbi);
  err = f2fs_inplace_write_data(fio);
  if (err) {
   if (f2fs_encrypted_file(inode))
    fscrypt_finalize_bounce_page(&fio->encrypted_page);
   if (PageWriteback(page))
    end_page_writeback(page);
  } else {
   set_inode_flag(inode, FI_UPDATE_WRITE);
  }
  trace_f2fs_do_write_data_page(fio->page, IPU);
  return err;
 }

 if (fio->need_lock == LOCK_RETRY) {
  if (!f2fs_trylock_op(fio->sbi)) {
   err = -EAGAIN;
   goto out_writepage;
  }
  fio->need_lock = LOCK_REQ;
 }

 err = f2fs_get_node_info(fio->sbi, dn.nid, &ni);
 if (err)
  goto out_writepage;

 fio->version = ni.version;

 err = encrypt_one_page(fio);
 if (err)
  goto out_writepage;

 set_page_writeback(page);
 ClearPageError(page);


 f2fs_outplace_write_data(&dn, fio);
 trace_f2fs_do_write_data_page(page, OPU);
 set_inode_flag(inode, FI_APPEND_WRITE);
 if (page->index == 0)
  set_inode_flag(inode, FI_FIRST_BLOCK_WRITTEN);
out_writepage:
 f2fs_put_dnode(&dn);
out:
 if (fio->need_lock == LOCK_REQ)
  f2fs_unlock_op(fio->sbi);
 return err;
}
