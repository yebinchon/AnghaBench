
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {struct task_struct* bi_private; TYPE_1__ bi_iter; scalar_t__ bi_status; } ;


 int ClearPageUptodate (struct page*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int WRITE_ONCE (struct task_struct*,int *) ;
 int bio_dev (struct bio*) ;
 struct page* bio_first_page_all (struct bio*) ;
 int bio_put (struct bio*) ;
 int blk_wake_io_task (struct task_struct*) ;
 int pr_alert (char*,int ,int ,unsigned long long) ;
 int put_task_struct (struct task_struct*) ;
 int swap_slot_free_notify (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void end_swap_bio_read(struct bio *bio)
{
 struct page *page = bio_first_page_all(bio);
 struct task_struct *waiter = bio->bi_private;

 if (bio->bi_status) {
  SetPageError(page);
  ClearPageUptodate(page);
  pr_alert("Read-error on swap-device (%u:%u:%llu)\n",
    MAJOR(bio_dev(bio)), MINOR(bio_dev(bio)),
    (unsigned long long)bio->bi_iter.bi_sector);
  goto out;
 }

 SetPageUptodate(page);
 swap_slot_free_notify(page);
out:
 unlock_page(page);
 WRITE_ONCE(bio->bi_private, ((void*)0));
 bio_put(bio);
 if (waiter) {
  blk_wake_io_task(waiter);
  put_task_struct(waiter);
 }
}
