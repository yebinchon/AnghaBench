
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct iov_iter {TYPE_1__* pipe; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int curbuf; int buffers; } ;


 int DIV_ROUND_UP (size_t,int) ;
 size_t EFAULT ;
 size_t ENOMEM ;
 int PAGE_SIZE ;
 size_t __pipe_get_pages (struct iov_iter*,size_t,struct page**,int,size_t*) ;
 int data_start (struct iov_iter*,int*,size_t*) ;
 struct page** get_pages_array (int) ;
 int kvfree (struct page**) ;
 int sanity (struct iov_iter*) ;

__attribute__((used)) static ssize_t pipe_get_pages_alloc(struct iov_iter *i,
     struct page ***pages, size_t maxsize,
     size_t *start)
{
 struct page **p;
 ssize_t n;
 int idx;
 int npages;

 if (!maxsize)
  return 0;

 if (!sanity(i))
  return -EFAULT;

 data_start(i, &idx, start);

 npages = ((i->pipe->curbuf - idx - 1) & (i->pipe->buffers - 1)) + 1;
 n = npages * PAGE_SIZE - *start;
 if (maxsize > n)
  maxsize = n;
 else
  npages = DIV_ROUND_UP(maxsize + *start, PAGE_SIZE);
 p = get_pages_array(npages);
 if (!p)
  return -ENOMEM;
 n = __pipe_get_pages(i, maxsize, p, idx, start);
 if (n > 0)
  *pages = p;
 else
  kvfree(p);
 return n;
}
