
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct iov_iter {unsigned long nr_segs; size_t count; size_t iov_offset; struct bio_vec const* bvec; } ;
struct io_uring_sqe {int addr; int buf_index; int len; } ;
struct io_ring_ctx {unsigned int nr_user_bufs; struct io_mapped_ubuf* user_bufs; } ;
struct io_mapped_ubuf {size_t ubuf; size_t len; struct bio_vec* bvec; int nr_bvecs; } ;
struct bio_vec {size_t bv_len; } ;


 int EFAULT ;
 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 void* READ_ONCE (int ) ;
 unsigned int array_index_nospec (unsigned int,unsigned int) ;
 int iov_iter_advance (struct iov_iter*,size_t) ;
 int iov_iter_bvec (struct iov_iter*,int,struct bio_vec*,int ,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int io_import_fixed(struct io_ring_ctx *ctx, int rw,
      const struct io_uring_sqe *sqe,
      struct iov_iter *iter)
{
 size_t len = READ_ONCE(sqe->len);
 struct io_mapped_ubuf *imu;
 unsigned index, buf_index;
 size_t offset;
 u64 buf_addr;


 if (unlikely(!ctx->user_bufs))
  return -EFAULT;

 buf_index = READ_ONCE(sqe->buf_index);
 if (unlikely(buf_index >= ctx->nr_user_bufs))
  return -EFAULT;

 index = array_index_nospec(buf_index, ctx->nr_user_bufs);
 imu = &ctx->user_bufs[index];
 buf_addr = READ_ONCE(sqe->addr);


 if (buf_addr + len < buf_addr)
  return -EFAULT;

 if (buf_addr < imu->ubuf || buf_addr + len > imu->ubuf + imu->len)
  return -EFAULT;





 offset = buf_addr - imu->ubuf;
 iov_iter_bvec(iter, rw, imu->bvec, imu->nr_bvecs, offset + len);

 if (offset) {
  const struct bio_vec *bvec = imu->bvec;

  if (offset <= bvec->bv_len) {
   iov_iter_advance(iter, offset);
  } else {
   unsigned long seg_skip;


   offset -= bvec->bv_len;
   seg_skip = 1 + (offset >> PAGE_SHIFT);

   iter->bvec = bvec + seg_skip;
   iter->nr_segs -= seg_skip;
   iter->count -= bvec->bv_len + offset;
   iter->iov_offset = offset & ~PAGE_MASK;
  }
 }

 return 0;
}
