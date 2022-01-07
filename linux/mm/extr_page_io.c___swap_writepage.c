
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct swap_info_struct {int flags; int bdev; struct file* swap_file; } ;
struct page {int dummy; } ;
struct kiocb {int ki_pos; } ;
struct iov_iter {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct bio_vec {int bv_len; int bv_offset; struct page* bv_page; } ;
struct bio {int bi_opf; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int bio_end_io_t ;
struct TYPE_2__ {int (* direct_IO ) (struct kiocb*,struct iov_iter*) ;} ;


 int ClearPageReclaim (struct page*) ;
 int ENOMEM ;
 int GFP_NOIO ;
 int PAGE_SIZE ;
 int PSWPOUT ;
 int PageSwapCache (struct page*) ;
 int REQ_OP_WRITE ;
 int REQ_SWAP ;
 int SWP_FS ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int WRITE ;
 int bdev_write_page (int ,int ,struct page*,struct writeback_control*) ;
 int bio_associate_blkg_from_page (struct bio*,struct page*) ;
 int count_swpout_vm_event (struct page*) ;
 int count_vm_event (int ) ;
 int end_page_writeback (struct page*) ;
 struct bio* get_swap_bio (int ,struct page*,int ) ;
 int init_sync_kiocb (struct kiocb*,struct file*) ;
 int iov_iter_bvec (struct iov_iter*,int ,struct bio_vec*,int,int) ;
 int page_file_offset (struct page*) ;
 struct swap_info_struct* page_swap_info (struct page*) ;
 int pr_err_ratelimited (char*,int ) ;
 int set_page_dirty (struct page*) ;
 int set_page_writeback (struct page*) ;
 int stub1 (struct kiocb*,struct iov_iter*) ;
 int submit_bio (struct bio*) ;
 int swap_page_sector (struct page*) ;
 int unlock_page (struct page*) ;
 int wbc_to_write_flags (struct writeback_control*) ;

int __swap_writepage(struct page *page, struct writeback_control *wbc,
  bio_end_io_t end_write_func)
{
 struct bio *bio;
 int ret;
 struct swap_info_struct *sis = page_swap_info(page);

 VM_BUG_ON_PAGE(!PageSwapCache(page), page);
 if (sis->flags & SWP_FS) {
  struct kiocb kiocb;
  struct file *swap_file = sis->swap_file;
  struct address_space *mapping = swap_file->f_mapping;
  struct bio_vec bv = {
   .bv_page = page,
   .bv_len = PAGE_SIZE,
   .bv_offset = 0
  };
  struct iov_iter from;

  iov_iter_bvec(&from, WRITE, &bv, 1, PAGE_SIZE);
  init_sync_kiocb(&kiocb, swap_file);
  kiocb.ki_pos = page_file_offset(page);

  set_page_writeback(page);
  unlock_page(page);
  ret = mapping->a_ops->direct_IO(&kiocb, &from);
  if (ret == PAGE_SIZE) {
   count_vm_event(PSWPOUT);
   ret = 0;
  } else {
   set_page_dirty(page);
   ClearPageReclaim(page);
   pr_err_ratelimited("Write error on dio swapfile (%llu)\n",
        page_file_offset(page));
  }
  end_page_writeback(page);
  return ret;
 }

 ret = bdev_write_page(sis->bdev, swap_page_sector(page), page, wbc);
 if (!ret) {
  count_swpout_vm_event(page);
  return 0;
 }

 ret = 0;
 bio = get_swap_bio(GFP_NOIO, page, end_write_func);
 if (bio == ((void*)0)) {
  set_page_dirty(page);
  unlock_page(page);
  ret = -ENOMEM;
  goto out;
 }
 bio->bi_opf = REQ_OP_WRITE | REQ_SWAP | wbc_to_write_flags(wbc);
 bio_associate_blkg_from_page(bio, page);
 count_swpout_vm_event(page);
 set_page_writeback(page);
 unlock_page(page);
 submit_bio(bio);
out:
 return ret;
}
