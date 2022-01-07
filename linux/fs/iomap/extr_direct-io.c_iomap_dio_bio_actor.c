
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct TYPE_6__ {struct iov_iter* iter; } ;
struct iomap_dio {int flags; size_t size; TYPE_3__ submit; TYPE_1__* iocb; scalar_t__ error; } ;
struct iomap {scalar_t__ type; int flags; int bdev; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {size_t bi_size; int bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; int bi_end_io; struct iomap_dio* bi_private; int bi_ioprio; int bi_write_hint; } ;
typedef unsigned int loff_t ;
struct TYPE_4__ {int ki_ioprio; int ki_hint; } ;


 int BIO_MAX_PAGES ;
 unsigned int EINVAL ;
 int GFP_KERNEL ;
 int IOMAP_DIO_COW ;
 int IOMAP_DIO_DIRTY ;
 int IOMAP_DIO_UNWRITTEN ;
 int IOMAP_DIO_WRITE ;
 int IOMAP_DIO_WRITE_FUA ;
 int IOMAP_F_DIRTY ;
 int IOMAP_F_NEW ;
 int IOMAP_F_SHARED ;
 scalar_t__ IOMAP_MAPPED ;
 scalar_t__ IOMAP_UNWRITTEN ;
 int REQ_FUA ;
 int REQ_IDLE ;
 int REQ_OP_READ ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int bdev_get_queue (int ) ;
 int bdev_logical_block_size (int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_iov_iter_get_pages (struct bio*,struct iov_iter*) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_pages_dirty (struct bio*) ;
 scalar_t__ blk_queue_fua (int ) ;
 unsigned int blksize_bits (int ) ;
 unsigned int i_blocksize (struct inode*) ;
 unsigned int i_size_read (struct inode*) ;
 int iomap_dio_bio_end_io ;
 int iomap_dio_submit_bio (struct iomap_dio*,struct iomap*,struct bio*) ;
 int iomap_dio_zero (struct iomap_dio*,struct iomap*,unsigned int,unsigned int) ;
 int iomap_sector (struct iomap*,unsigned int) ;
 int iov_iter_advance (struct iov_iter*,size_t) ;
 unsigned int iov_iter_alignment (struct iov_iter*) ;
 int iov_iter_npages (struct iov_iter*,int ) ;
 int iov_iter_revert (struct iov_iter*,size_t) ;
 int iov_iter_truncate (struct iov_iter*,unsigned int) ;
 int task_io_account_write (size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static loff_t
iomap_dio_bio_actor(struct inode *inode, loff_t pos, loff_t length,
  struct iomap_dio *dio, struct iomap *iomap)
{
 unsigned int blkbits = blksize_bits(bdev_logical_block_size(iomap->bdev));
 unsigned int fs_block_size = i_blocksize(inode), pad;
 unsigned int align = iov_iter_alignment(dio->submit.iter);
 struct iov_iter iter;
 struct bio *bio;
 bool need_zeroout = 0;
 bool use_fua = 0;
 int nr_pages, ret = 0;
 size_t copied = 0;

 if ((pos | length | align) & ((1 << blkbits) - 1))
  return -EINVAL;

 if (iomap->type == IOMAP_UNWRITTEN) {
  dio->flags |= IOMAP_DIO_UNWRITTEN;
  need_zeroout = 1;
 }

 if (iomap->flags & IOMAP_F_SHARED)
  dio->flags |= IOMAP_DIO_COW;

 if (iomap->flags & IOMAP_F_NEW) {
  need_zeroout = 1;
 } else if (iomap->type == IOMAP_MAPPED) {







  if (!(iomap->flags & (IOMAP_F_SHARED|IOMAP_F_DIRTY)) &&
      (dio->flags & IOMAP_DIO_WRITE_FUA) &&
      blk_queue_fua(bdev_get_queue(iomap->bdev)))
   use_fua = 1;
 }





 iter = *dio->submit.iter;
 iov_iter_truncate(&iter, length);

 nr_pages = iov_iter_npages(&iter, BIO_MAX_PAGES);
 if (nr_pages <= 0)
  return nr_pages;

 if (need_zeroout) {

  pad = pos & (fs_block_size - 1);
  if (pad)
   iomap_dio_zero(dio, iomap, pos - pad, pad);
 }

 do {
  size_t n;
  if (dio->error) {
   iov_iter_revert(dio->submit.iter, copied);
   return 0;
  }

  bio = bio_alloc(GFP_KERNEL, nr_pages);
  bio_set_dev(bio, iomap->bdev);
  bio->bi_iter.bi_sector = iomap_sector(iomap, pos);
  bio->bi_write_hint = dio->iocb->ki_hint;
  bio->bi_ioprio = dio->iocb->ki_ioprio;
  bio->bi_private = dio;
  bio->bi_end_io = iomap_dio_bio_end_io;

  ret = bio_iov_iter_get_pages(bio, &iter);
  if (unlikely(ret)) {






   bio_put(bio);
   goto zero_tail;
  }

  n = bio->bi_iter.bi_size;
  if (dio->flags & IOMAP_DIO_WRITE) {
   bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_IDLE;
   if (use_fua)
    bio->bi_opf |= REQ_FUA;
   else
    dio->flags &= ~IOMAP_DIO_WRITE_FUA;
   task_io_account_write(n);
  } else {
   bio->bi_opf = REQ_OP_READ;
   if (dio->flags & IOMAP_DIO_DIRTY)
    bio_set_pages_dirty(bio);
  }

  iov_iter_advance(dio->submit.iter, n);

  dio->size += n;
  pos += n;
  copied += n;

  nr_pages = iov_iter_npages(&iter, BIO_MAX_PAGES);
  iomap_dio_submit_bio(dio, iomap, bio);
 } while (nr_pages);







zero_tail:
 if (need_zeroout ||
     ((dio->flags & IOMAP_DIO_WRITE) && pos >= i_size_read(inode))) {

  pad = pos & (fs_block_size - 1);
  if (pad)
   iomap_dio_zero(dio, iomap, pos, fs_block_size - pad);
 }
 return copied ? copied : ret;
}
