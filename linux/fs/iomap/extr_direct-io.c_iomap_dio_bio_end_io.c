
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_8__ {int work; } ;
struct TYPE_5__ {struct task_struct* waiter; } ;
struct iomap_dio {int flags; TYPE_4__ aio; TYPE_2__* iocb; TYPE_1__ submit; scalar_t__ wait_for_completion; int ref; } ;
struct inode {TYPE_3__* i_sb; } ;
struct bio {scalar_t__ bi_status; struct iomap_dio* bi_private; } ;
struct TYPE_7__ {int s_dio_done_wq; } ;
struct TYPE_6__ {int ki_filp; } ;


 int INIT_WORK (int *,int (*) (int *)) ;
 int IOMAP_DIO_DIRTY ;
 int IOMAP_DIO_WRITE ;
 int WRITE_ONCE (struct task_struct*,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_check_pages_dirty (struct bio*) ;
 int bio_put (struct bio*) ;
 int bio_release_pages (struct bio*,int) ;
 int blk_status_to_errno (scalar_t__) ;
 int blk_wake_io_task (struct task_struct*) ;
 struct inode* file_inode (int ) ;
 int iomap_dio_complete_work (int *) ;
 int iomap_dio_set_error (struct iomap_dio*,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void iomap_dio_bio_end_io(struct bio *bio)
{
 struct iomap_dio *dio = bio->bi_private;
 bool should_dirty = (dio->flags & IOMAP_DIO_DIRTY);

 if (bio->bi_status)
  iomap_dio_set_error(dio, blk_status_to_errno(bio->bi_status));

 if (atomic_dec_and_test(&dio->ref)) {
  if (dio->wait_for_completion) {
   struct task_struct *waiter = dio->submit.waiter;
   WRITE_ONCE(dio->submit.waiter, ((void*)0));
   blk_wake_io_task(waiter);
  } else if (dio->flags & IOMAP_DIO_WRITE) {
   struct inode *inode = file_inode(dio->iocb->ki_filp);

   INIT_WORK(&dio->aio.work, iomap_dio_complete_work);
   queue_work(inode->i_sb->s_dio_done_wq, &dio->aio.work);
  } else {
   iomap_dio_complete_work(&dio->aio.work);
  }
 }

 if (should_dirty) {
  bio_check_pages_dirty(bio);
 } else {
  bio_release_pages(bio, 0);
  bio_put(bio);
 }
}
