
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer {TYPE_1__** buffers; int cpumask; } ;
struct TYPE_2__ {unsigned long nr_pages; } ;


 unsigned long BUF_PAGE_SIZE ;
 int cpumask_test_cpu (int,int ) ;

unsigned long ring_buffer_size(struct ring_buffer *buffer, int cpu)
{






 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return 0;

 return BUF_PAGE_SIZE * buffer->buffers[cpu]->nr_pages;
}
