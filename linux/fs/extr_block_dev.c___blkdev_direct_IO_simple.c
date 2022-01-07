
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_pos; int ki_flags; int ki_ioprio; int ki_hint; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
struct block_device {int dummy; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int bi_sector; int bi_size; } ;
struct bio {int bi_status; int bi_private; int bi_opf; TYPE_1__ bi_iter; int bi_ioprio; int bi_end_io; int bi_write_hint; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int blk_qc_t ;


 int DIO_INLINE_BIO_VECS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOCB_HIPRI ;
 struct block_device* I_BDEV (int ) ;
 scalar_t__ READ ;
 int READ_ONCE (int ) ;
 int REQ_OP_READ ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int bdev_file_inode (struct file*) ;
 int bdev_get_queue (struct block_device*) ;
 int bdev_logical_block_size (struct block_device*) ;
 int bio_init (struct bio*,struct bio_vec*,int) ;
 int bio_iov_iter_get_pages (struct bio*,struct iov_iter*) ;
 int bio_release_pages (struct bio*,int) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int bio_set_polled (struct bio*,struct kiocb*) ;
 int bio_uninit (struct bio*) ;
 int blk_poll (int ,int ,int) ;
 int blk_status_to_errno (int ) ;
 int blkdev_bio_end_io_simple ;
 int current ;
 int dio_bio_write_op (struct kiocb*) ;
 int io_schedule () ;
 int iov_iter_alignment (struct iov_iter*) ;
 scalar_t__ iov_iter_rw (struct iov_iter*) ;
 scalar_t__ iter_is_iovec (struct iov_iter*) ;
 int kfree (struct bio_vec*) ;
 struct bio_vec* kmalloc_array (int,int,int ) ;
 int set_current_state (int ) ;
 int submit_bio (struct bio*) ;
 int task_io_account_write (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t
__blkdev_direct_IO_simple(struct kiocb *iocb, struct iov_iter *iter,
  int nr_pages)
{
 struct file *file = iocb->ki_filp;
 struct block_device *bdev = I_BDEV(bdev_file_inode(file));
 struct bio_vec inline_vecs[DIO_INLINE_BIO_VECS], *vecs;
 loff_t pos = iocb->ki_pos;
 bool should_dirty = 0;
 struct bio bio;
 ssize_t ret;
 blk_qc_t qc;

 if ((pos | iov_iter_alignment(iter)) &
     (bdev_logical_block_size(bdev) - 1))
  return -EINVAL;

 if (nr_pages <= DIO_INLINE_BIO_VECS)
  vecs = inline_vecs;
 else {
  vecs = kmalloc_array(nr_pages, sizeof(struct bio_vec),
         GFP_KERNEL);
  if (!vecs)
   return -ENOMEM;
 }

 bio_init(&bio, vecs, nr_pages);
 bio_set_dev(&bio, bdev);
 bio.bi_iter.bi_sector = pos >> 9;
 bio.bi_write_hint = iocb->ki_hint;
 bio.bi_private = current;
 bio.bi_end_io = blkdev_bio_end_io_simple;
 bio.bi_ioprio = iocb->ki_ioprio;

 ret = bio_iov_iter_get_pages(&bio, iter);
 if (unlikely(ret))
  goto out;
 ret = bio.bi_iter.bi_size;

 if (iov_iter_rw(iter) == READ) {
  bio.bi_opf = REQ_OP_READ;
  if (iter_is_iovec(iter))
   should_dirty = 1;
 } else {
  bio.bi_opf = dio_bio_write_op(iocb);
  task_io_account_write(ret);
 }
 if (iocb->ki_flags & IOCB_HIPRI)
  bio_set_polled(&bio, iocb);

 qc = submit_bio(&bio);
 for (;;) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (!READ_ONCE(bio.bi_private))
   break;
  if (!(iocb->ki_flags & IOCB_HIPRI) ||
      !blk_poll(bdev_get_queue(bdev), qc, 1))
   io_schedule();
 }
 __set_current_state(TASK_RUNNING);

 bio_release_pages(&bio, should_dirty);
 if (unlikely(bio.bi_status))
  ret = blk_status_to_errno(bio.bi_status);

out:
 if (vecs != inline_vecs)
  kfree(vecs);

 bio_uninit(&bio);

 return ret;
}
