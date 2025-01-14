
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kiocb {scalar_t__ ki_pos; int ki_flags; int private; int ki_cookie; TYPE_3__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct iomap_ops {int dummy; } ;
struct iomap_dio_ops {int dummy; } ;
struct TYPE_5__ {int * cookie; int * last_queue; int waiter; struct iov_iter* iter; } ;
struct iomap_dio {scalar_t__ i_size; int flags; int wait_for_completion; TYPE_1__ submit; int ref; scalar_t__ error; struct iomap_dio_ops const* dops; scalar_t__ size; struct kiocb* iocb; } ;
struct inode {TYPE_2__* i_sb; int i_rwsem; } ;
struct blk_plug {int dummy; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_7__ {struct address_space* f_mapping; } ;
struct TYPE_6__ {int s_dio_done_wq; } ;


 int * BLK_QC_T_NONE ;
 scalar_t__ EAGAIN ;
 scalar_t__ EIOCBQUEUED ;
 scalar_t__ ENOMEM ;
 scalar_t__ ENOTBLK ;
 int GFP_KERNEL ;
 int IOCB_DSYNC ;
 int IOCB_HIPRI ;
 int IOCB_NOWAIT ;
 int IOCB_SYNC ;
 int IOMAP_DIO_DIRTY ;
 int IOMAP_DIO_NEED_SYNC ;
 int IOMAP_DIO_WRITE ;
 int IOMAP_DIO_WRITE_FUA ;
 unsigned int IOMAP_DIRECT ;
 unsigned int IOMAP_NOWAIT ;
 unsigned int IOMAP_WRITE ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ READ ;
 int READ_ONCE (int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ WRITE ;
 int WRITE_ONCE (int ,int *) ;
 int __set_current_state (int ) ;
 int atomic_dec_and_test (int *) ;
 int atomic_set (int *,int) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_poll (int *,int *,int) ;
 int blk_start_plug (struct blk_plug*) ;
 int current ;
 int dio_warn_stale_pagecache (TYPE_3__*) ;
 struct inode* file_inode (TYPE_3__*) ;
 scalar_t__ filemap_range_has_page (struct address_space*,scalar_t__,scalar_t__) ;
 scalar_t__ filemap_write_and_wait_range (struct address_space*,scalar_t__,scalar_t__) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_dio_begin (struct inode*) ;
 scalar_t__ invalidate_inode_pages2_range (struct address_space*,scalar_t__,scalar_t__) ;
 int io_schedule () ;
 scalar_t__ iomap_apply (struct inode*,scalar_t__,size_t,unsigned int,struct iomap_ops const*,struct iomap_dio*,int ) ;
 int iomap_dio_actor ;
 scalar_t__ iomap_dio_complete (struct iomap_dio*) ;
 int iomap_dio_set_error (struct iomap_dio*,scalar_t__) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ iov_iter_rw (struct iov_iter*) ;
 int is_sync_kiocb (struct kiocb*) ;
 scalar_t__ iter_is_iovec (struct iov_iter*) ;
 int kfree (struct iomap_dio*) ;
 struct iomap_dio* kmalloc (int,int ) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ sb_init_dio_done_wq (TYPE_2__*) ;
 int set_current_state (int ) ;

ssize_t
iomap_dio_rw(struct kiocb *iocb, struct iov_iter *iter,
  const struct iomap_ops *ops, const struct iomap_dio_ops *dops)
{
 struct address_space *mapping = iocb->ki_filp->f_mapping;
 struct inode *inode = file_inode(iocb->ki_filp);
 size_t count = iov_iter_count(iter);
 loff_t pos = iocb->ki_pos, start = pos;
 loff_t end = iocb->ki_pos + count - 1, ret = 0;
 unsigned int flags = IOMAP_DIRECT;
 bool wait_for_completion = is_sync_kiocb(iocb);
 struct blk_plug plug;
 struct iomap_dio *dio;

 lockdep_assert_held(&inode->i_rwsem);

 if (!count)
  return 0;

 dio = kmalloc(sizeof(*dio), GFP_KERNEL);
 if (!dio)
  return -ENOMEM;

 dio->iocb = iocb;
 atomic_set(&dio->ref, 1);
 dio->size = 0;
 dio->i_size = i_size_read(inode);
 dio->dops = dops;
 dio->error = 0;
 dio->flags = 0;

 dio->submit.iter = iter;
 dio->submit.waiter = current;
 dio->submit.cookie = BLK_QC_T_NONE;
 dio->submit.last_queue = ((void*)0);

 if (iov_iter_rw(iter) == READ) {
  if (pos >= dio->i_size)
   goto out_free_dio;

  if (iter_is_iovec(iter) && iov_iter_rw(iter) == READ)
   dio->flags |= IOMAP_DIO_DIRTY;
 } else {
  flags |= IOMAP_WRITE;
  dio->flags |= IOMAP_DIO_WRITE;


  if (iocb->ki_flags & IOCB_DSYNC)
   dio->flags |= IOMAP_DIO_NEED_SYNC;







  if ((iocb->ki_flags & (IOCB_DSYNC | IOCB_SYNC)) == IOCB_DSYNC)
   dio->flags |= IOMAP_DIO_WRITE_FUA;
 }

 if (iocb->ki_flags & IOCB_NOWAIT) {
  if (filemap_range_has_page(mapping, start, end)) {
   ret = -EAGAIN;
   goto out_free_dio;
  }
  flags |= IOMAP_NOWAIT;
 }

 ret = filemap_write_and_wait_range(mapping, start, end);
 if (ret)
  goto out_free_dio;







 ret = invalidate_inode_pages2_range(mapping,
   start >> PAGE_SHIFT, end >> PAGE_SHIFT);
 if (ret)
  dio_warn_stale_pagecache(iocb->ki_filp);
 ret = 0;

 if (iov_iter_rw(iter) == WRITE && !wait_for_completion &&
     !inode->i_sb->s_dio_done_wq) {
  ret = sb_init_dio_done_wq(inode->i_sb);
  if (ret < 0)
   goto out_free_dio;
 }

 inode_dio_begin(inode);

 blk_start_plug(&plug);
 do {
  ret = iomap_apply(inode, pos, count, flags, ops, dio,
    iomap_dio_actor);
  if (ret <= 0) {

   if (ret == -ENOTBLK) {
    wait_for_completion = 1;
    ret = 0;
   }
   break;
  }
  pos += ret;

  if (iov_iter_rw(iter) == READ && pos >= dio->i_size)
   break;
 } while ((count = iov_iter_count(iter)) > 0);
 blk_finish_plug(&plug);

 if (ret < 0)
  iomap_dio_set_error(dio, ret);





 if (dio->flags & IOMAP_DIO_WRITE_FUA)
  dio->flags &= ~IOMAP_DIO_NEED_SYNC;

 WRITE_ONCE(iocb->ki_cookie, dio->submit.cookie);
 WRITE_ONCE(iocb->private, dio->submit.last_queue);
 dio->wait_for_completion = wait_for_completion;
 if (!atomic_dec_and_test(&dio->ref)) {
  if (!wait_for_completion)
   return -EIOCBQUEUED;

  for (;;) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   if (!READ_ONCE(dio->submit.waiter))
    break;

   if (!(iocb->ki_flags & IOCB_HIPRI) ||
       !dio->submit.last_queue ||
       !blk_poll(dio->submit.last_queue,
      dio->submit.cookie, 1))
    io_schedule();
  }
  __set_current_state(TASK_RUNNING);
 }

 return iomap_dio_complete(dio);

out_free_dio:
 kfree(dio);
 return ret;
}
