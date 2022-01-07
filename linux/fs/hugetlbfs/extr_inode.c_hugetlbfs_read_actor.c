
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iov_iter {int dummy; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 size_t copy_page_to_iter (struct page*,unsigned long,int,struct iov_iter*) ;

__attribute__((used)) static size_t
hugetlbfs_read_actor(struct page *page, unsigned long offset,
   struct iov_iter *to, unsigned long size)
{
 size_t copied = 0;
 int i, chunksize;


 i = offset >> PAGE_SHIFT;
 offset = offset & ~PAGE_MASK;

 while (size) {
  size_t n;
  chunksize = PAGE_SIZE;
  if (offset)
   chunksize -= offset;
  if (chunksize > size)
   chunksize = size;
  n = copy_page_to_iter(&page[i], offset, chunksize, to);
  copied += n;
  if (n != chunksize)
   return copied;
  offset = 0;
  size -= chunksize;
  i++;
 }
 return copied;
}
