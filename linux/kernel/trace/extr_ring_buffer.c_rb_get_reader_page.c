
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ring_buffer_per_cpu {unsigned long last_overrun; unsigned long lost_events; int lock; int read_stamp; struct buffer_page* reader_page; int pages_read; int head_page; int overrun; int pages; struct buffer_page* commit_page; } ;
struct TYPE_6__ {TYPE_3__* next; int prev; } ;
struct buffer_page {scalar_t__ read; TYPE_1__* page; TYPE_2__ list; scalar_t__ real_end; int entries; int write; } ;
struct TYPE_7__ {TYPE_2__* prev; } ;
struct TYPE_5__ {int time_stamp; int commit; } ;


 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int local_inc (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long local_read (int *) ;
 int local_set (int *,int ) ;
 int rb_head_page_replace (struct buffer_page*,struct buffer_page*) ;
 int rb_inc_page (struct ring_buffer_per_cpu*,int *) ;
 TYPE_3__* rb_list_head (TYPE_3__*) ;
 scalar_t__ rb_num_of_entries (struct ring_buffer_per_cpu*) ;
 scalar_t__ rb_page_size (struct buffer_page*) ;
 struct buffer_page* rb_set_head_page (struct ring_buffer_per_cpu*) ;
 int rb_set_list_to_head (struct ring_buffer_per_cpu*,TYPE_2__*) ;
 int smp_mb () ;

__attribute__((used)) static struct buffer_page *
rb_get_reader_page(struct ring_buffer_per_cpu *cpu_buffer)
{
 struct buffer_page *reader = ((void*)0);
 unsigned long overwrite;
 unsigned long flags;
 int nr_loops = 0;
 int ret;

 local_irq_save(flags);
 arch_spin_lock(&cpu_buffer->lock);

 again:






 if (RB_WARN_ON(cpu_buffer, ++nr_loops > 3)) {
  reader = ((void*)0);
  goto out;
 }

 reader = cpu_buffer->reader_page;


 if (cpu_buffer->reader_page->read < rb_page_size(reader))
  goto out;


 if (RB_WARN_ON(cpu_buffer,
         cpu_buffer->reader_page->read > rb_page_size(reader)))
  goto out;


 reader = ((void*)0);
 if (cpu_buffer->commit_page == cpu_buffer->reader_page)
  goto out;


 if (rb_num_of_entries(cpu_buffer) == 0)
  goto out;




 local_set(&cpu_buffer->reader_page->write, 0);
 local_set(&cpu_buffer->reader_page->entries, 0);
 local_set(&cpu_buffer->reader_page->page->commit, 0);
 cpu_buffer->reader_page->real_end = 0;

 spin:



 reader = rb_set_head_page(cpu_buffer);
 if (!reader)
  goto out;
 cpu_buffer->reader_page->list.next = rb_list_head(reader->list.next);
 cpu_buffer->reader_page->list.prev = reader->list.prev;






 cpu_buffer->pages = reader->list.prev;


 rb_set_list_to_head(cpu_buffer, &cpu_buffer->reader_page->list);
 smp_mb();
 overwrite = local_read(&(cpu_buffer->overrun));
 ret = rb_head_page_replace(reader, cpu_buffer->reader_page);




 if (!ret)
  goto spin;






 rb_list_head(reader->list.next)->prev = &cpu_buffer->reader_page->list;
 rb_inc_page(cpu_buffer, &cpu_buffer->head_page);

 local_inc(&cpu_buffer->pages_read);


 cpu_buffer->reader_page = reader;
 cpu_buffer->reader_page->read = 0;

 if (overwrite != cpu_buffer->last_overrun) {
  cpu_buffer->lost_events = overwrite - cpu_buffer->last_overrun;
  cpu_buffer->last_overrun = overwrite;
 }

 goto again;

 out:

 if (reader && reader->read == 0)
  cpu_buffer->read_stamp = reader->page->time_stamp;

 arch_spin_unlock(&cpu_buffer->lock);
 local_irq_restore(flags);

 return reader;
}
