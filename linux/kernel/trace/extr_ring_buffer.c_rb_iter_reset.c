
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ring_buffer_per_cpu {int read_stamp; int read; TYPE_2__* reader_page; } ;
struct ring_buffer_iter {TYPE_2__* head_page; int read_stamp; int head; int cache_read; TYPE_2__* cache_reader_page; struct ring_buffer_per_cpu* cpu_buffer; } ;
struct TYPE_4__ {TYPE_1__* page; int read; } ;
struct TYPE_3__ {int time_stamp; } ;



__attribute__((used)) static void rb_iter_reset(struct ring_buffer_iter *iter)
{
 struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;


 iter->head_page = cpu_buffer->reader_page;
 iter->head = cpu_buffer->reader_page->read;

 iter->cache_reader_page = iter->head_page;
 iter->cache_read = cpu_buffer->read;

 if (iter->head)
  iter->read_stamp = cpu_buffer->read_stamp;
 else
  iter->read_stamp = iter->head_page->page->time_stamp;
}
