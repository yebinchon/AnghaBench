
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {int dummy; } ;
struct iov_iter {unsigned int type; unsigned long nr_segs; size_t count; scalar_t__ iov_offset; struct kvec const* kvec; } ;


 unsigned int ITER_KVEC ;
 unsigned int READ ;
 int WARN_ON (unsigned int) ;
 unsigned int WRITE ;

void iov_iter_kvec(struct iov_iter *i, unsigned int direction,
   const struct kvec *kvec, unsigned long nr_segs,
   size_t count)
{
 WARN_ON(direction & ~(READ | WRITE));
 i->type = ITER_KVEC | (direction & (READ | WRITE));
 i->kvec = kvec;
 i->nr_segs = nr_segs;
 i->iov_offset = 0;
 i->count = count;
}
