
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {size_t iov_offset; int idx; TYPE_1__* pipe; } ;
struct TYPE_2__ {int * bufs; } ;


 size_t PAGE_SIZE ;
 int allocated (int *) ;
 int next_idx (int,TYPE_1__*) ;

__attribute__((used)) static inline void data_start(const struct iov_iter *i, int *idxp, size_t *offp)
{
 size_t off = i->iov_offset;
 int idx = i->idx;
 if (off && (!allocated(&i->pipe->bufs[idx]) || off == PAGE_SIZE)) {
  idx = next_idx(idx, i->pipe);
  off = 0;
 }
 *idxp = idx;
 *offp = off;
}
