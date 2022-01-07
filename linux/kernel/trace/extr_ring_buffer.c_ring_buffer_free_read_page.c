
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int lock; struct buffer_data_page* free_page; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; } ;
struct page {int dummy; } ;
struct buffer_data_page {int dummy; } ;


 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int free_page (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int page_ref_count (struct page*) ;
 struct page* virt_to_page (struct buffer_data_page*) ;

void ring_buffer_free_read_page(struct ring_buffer *buffer, int cpu, void *data)
{
 struct ring_buffer_per_cpu *cpu_buffer = buffer->buffers[cpu];
 struct buffer_data_page *bpage = data;
 struct page *page = virt_to_page(bpage);
 unsigned long flags;


 if (page_ref_count(page) > 1)
  goto out;

 local_irq_save(flags);
 arch_spin_lock(&cpu_buffer->lock);

 if (!cpu_buffer->free_page) {
  cpu_buffer->free_page = bpage;
  bpage = ((void*)0);
 }

 arch_spin_unlock(&cpu_buffer->lock);
 local_irq_restore(flags);

 out:
 free_page((unsigned long)bpage);
}
