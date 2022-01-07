
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer {TYPE_1__** buffers; } ;
struct TYPE_2__ {int pages_touched; int pages_read; } ;


 int WARN_ON_ONCE (int) ;
 size_t local_read (int *) ;

size_t ring_buffer_nr_dirty_pages(struct ring_buffer *buffer, int cpu)
{
 size_t read;
 size_t cnt;

 read = local_read(&buffer->buffers[cpu]->pages_read);
 cnt = local_read(&buffer->buffers[cpu]->pages_touched);

 if (cnt < read) {
  WARN_ON_ONCE(read > cnt + 1);
  return 0;
 }

 return cnt - read;
}
