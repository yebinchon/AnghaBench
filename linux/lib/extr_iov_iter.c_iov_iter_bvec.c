
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {unsigned int type; unsigned long nr_segs; size_t count; scalar_t__ iov_offset; struct bio_vec const* bvec; } ;
struct bio_vec {int dummy; } ;


 unsigned int ITER_BVEC ;
 unsigned int READ ;
 int WARN_ON (unsigned int) ;
 unsigned int WRITE ;

void iov_iter_bvec(struct iov_iter *i, unsigned int direction,
   const struct bio_vec *bvec, unsigned long nr_segs,
   size_t count)
{
 WARN_ON(direction & ~(READ | WRITE));
 i->type = ITER_BVEC | (direction & (READ | WRITE));
 i->bvec = bvec;
 i->nr_segs = nr_segs;
 i->iov_offset = 0;
 i->count = count;
}
