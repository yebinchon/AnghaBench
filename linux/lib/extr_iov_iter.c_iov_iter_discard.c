
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {unsigned int type; size_t count; scalar_t__ iov_offset; } ;


 int BUG_ON (int) ;
 unsigned int ITER_DISCARD ;
 unsigned int READ ;

void iov_iter_discard(struct iov_iter *i, unsigned int direction, size_t count)
{
 BUG_ON(direction != READ);
 i->type = ITER_DISCARD | READ;
 i->count = count;
 i->iov_offset = 0;
}
