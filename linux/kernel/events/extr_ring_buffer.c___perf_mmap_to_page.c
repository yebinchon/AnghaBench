
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {unsigned long nr_pages; int * data_pages; int user_page; } ;
struct page {int dummy; } ;


 struct page* virt_to_page (int ) ;

__attribute__((used)) static struct page *
__perf_mmap_to_page(struct ring_buffer *rb, unsigned long pgoff)
{
 if (pgoff > rb->nr_pages)
  return ((void*)0);

 if (pgoff == 0)
  return virt_to_page(rb->user_page);

 return virt_to_page(rb->data_pages[pgoff - 1]);
}
