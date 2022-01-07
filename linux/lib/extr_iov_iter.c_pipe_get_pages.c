
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct iov_iter {TYPE_1__* pipe; } ;
typedef int ssize_t ;
struct TYPE_2__ {int curbuf; int buffers; } ;


 int EFAULT ;
 size_t PAGE_SIZE ;
 int __pipe_get_pages (struct iov_iter*,size_t,struct page**,int,size_t*) ;
 int data_start (struct iov_iter*,int*,size_t*) ;
 size_t min (size_t,size_t) ;
 int sanity (struct iov_iter*) ;

__attribute__((used)) static ssize_t pipe_get_pages(struct iov_iter *i,
     struct page **pages, size_t maxsize, unsigned maxpages,
     size_t *start)
{
 unsigned npages;
 size_t capacity;
 int idx;

 if (!maxsize)
  return 0;

 if (!sanity(i))
  return -EFAULT;

 data_start(i, &idx, start);

 npages = ((i->pipe->curbuf - idx - 1) & (i->pipe->buffers - 1)) + 1;
 capacity = min(npages,maxpages) * PAGE_SIZE - *start;

 return __pipe_get_pages(i, min(maxsize, capacity), pages, idx, start);
}
