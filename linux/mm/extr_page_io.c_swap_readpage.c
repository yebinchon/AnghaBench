
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_info_struct {int flags; int bdev; struct file* swap_file; } ;
struct page {int dummy; } ;
struct gendisk {int queue; } ;
struct file {struct address_space* f_mapping; } ;
struct bio {int bi_private; int bi_opf; struct gendisk* bi_disk; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int blk_qc_t ;
struct TYPE_2__ {int (* readpage ) (struct file*,struct page*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PSWPIN ;
 int PageLocked (struct page*) ;
 int PageSwapCache (struct page*) ;
 int PageUptodate (struct page*) ;
 int READ_ONCE (int ) ;
 int REQ_HIPRI ;
 int REQ_OP_READ ;
 int SWP_FS ;
 int SetPageUptodate (struct page*) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __set_current_state (int ) ;
 int bdev_read_page (int ,int ,struct page*) ;
 int bio_get (struct bio*) ;
 int bio_put (struct bio*) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int blk_poll (int ,int ,int) ;
 int count_vm_event (int ) ;
 int current ;
 int end_swap_bio_read ;
 scalar_t__ frontswap_load (struct page*) ;
 struct bio* get_swap_bio (int ,struct page*,int ) ;
 int get_task_struct (int ) ;
 int io_schedule () ;
 struct swap_info_struct* page_swap_info (struct page*) ;
 int set_current_state (int ) ;
 int stub1 (struct file*,struct page*) ;
 int submit_bio (struct bio*) ;
 int swap_page_sector (struct page*) ;
 int swap_slot_free_notify (struct page*) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

int swap_readpage(struct page *page, bool synchronous)
{
 struct bio *bio;
 int ret = 0;
 struct swap_info_struct *sis = page_swap_info(page);
 blk_qc_t qc;
 struct gendisk *disk;

 VM_BUG_ON_PAGE(!PageSwapCache(page) && !synchronous, page);
 VM_BUG_ON_PAGE(!PageLocked(page), page);
 VM_BUG_ON_PAGE(PageUptodate(page), page);
 if (frontswap_load(page) == 0) {
  SetPageUptodate(page);
  unlock_page(page);
  goto out;
 }

 if (sis->flags & SWP_FS) {
  struct file *swap_file = sis->swap_file;
  struct address_space *mapping = swap_file->f_mapping;

  ret = mapping->a_ops->readpage(swap_file, page);
  if (!ret)
   count_vm_event(PSWPIN);
  return ret;
 }

 ret = bdev_read_page(sis->bdev, swap_page_sector(page), page);
 if (!ret) {
  if (trylock_page(page)) {
   swap_slot_free_notify(page);
   unlock_page(page);
  }

  count_vm_event(PSWPIN);
  return 0;
 }

 ret = 0;
 bio = get_swap_bio(GFP_KERNEL, page, end_swap_bio_read);
 if (bio == ((void*)0)) {
  unlock_page(page);
  ret = -ENOMEM;
  goto out;
 }
 disk = bio->bi_disk;




 bio_set_op_attrs(bio, REQ_OP_READ, 0);
 if (synchronous) {
  bio->bi_opf |= REQ_HIPRI;
  get_task_struct(current);
  bio->bi_private = current;
 }
 count_vm_event(PSWPIN);
 bio_get(bio);
 qc = submit_bio(bio);
 while (synchronous) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (!READ_ONCE(bio->bi_private))
   break;

  if (!blk_poll(disk->queue, qc, 1))
   io_schedule();
 }
 __set_current_state(TASK_RUNNING);
 bio_put(bio);

out:
 return ret;
}
