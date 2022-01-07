
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {unsigned long aux_nr_pages; } ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static inline unsigned long perf_aux_size(struct ring_buffer *rb)
{
 return rb->aux_nr_pages << PAGE_SHIFT;
}
