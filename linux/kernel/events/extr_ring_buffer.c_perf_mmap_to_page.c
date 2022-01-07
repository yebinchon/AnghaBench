
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {long aux_nr_pages; unsigned long aux_pgoff; int * aux_pages; } ;
struct page {int dummy; } ;


 struct page* __perf_mmap_to_page (struct ring_buffer*,unsigned long) ;
 int array_index_nospec (unsigned long,unsigned long) ;
 struct page* virt_to_page (int ) ;

struct page *
perf_mmap_to_page(struct ring_buffer *rb, unsigned long pgoff)
{
 if (rb->aux_nr_pages) {

  if (pgoff > rb->aux_pgoff + rb->aux_nr_pages)
   return ((void*)0);


  if (pgoff >= rb->aux_pgoff) {
   int aux_pgoff = array_index_nospec(pgoff - rb->aux_pgoff, rb->aux_nr_pages);
   return virt_to_page(rb->aux_pages[aux_pgoff]);
  }
 }

 return __perf_mmap_to_page(rb, pgoff);
}
