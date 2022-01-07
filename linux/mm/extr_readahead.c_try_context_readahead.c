
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {unsigned long start; int async_size; int size; } ;
struct address_space {int dummy; } ;
typedef unsigned long pgoff_t ;


 unsigned long count_history_pages (struct address_space*,unsigned long,unsigned long) ;
 int min (unsigned long,unsigned long) ;

__attribute__((used)) static int try_context_readahead(struct address_space *mapping,
     struct file_ra_state *ra,
     pgoff_t offset,
     unsigned long req_size,
     unsigned long max)
{
 pgoff_t size;

 size = count_history_pages(mapping, offset, max);





 if (size <= req_size)
  return 0;





 if (size >= offset)
  size *= 2;

 ra->start = offset;
 ra->size = min(size + req_size, max);
 ra->async_size = 1;

 return 1;
}
