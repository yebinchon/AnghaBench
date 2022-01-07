
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer {TYPE_1__** buffers; } ;
struct TYPE_2__ {size_t nr_pages; } ;



size_t ring_buffer_nr_pages(struct ring_buffer *buffer, int cpu)
{
 return buffer->buffers[cpu]->nr_pages;
}
