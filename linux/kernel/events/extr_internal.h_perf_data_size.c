
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {unsigned long nr_pages; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long page_order (struct ring_buffer*) ;

__attribute__((used)) static inline unsigned long perf_data_size(struct ring_buffer *rb)
{
 return rb->nr_pages << (PAGE_SHIFT + page_order(rb));
}
