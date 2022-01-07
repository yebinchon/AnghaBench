
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int lock; int * free_page; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;
struct page {int dummy; } ;
typedef void buffer_data_page ;


 int ENODEV ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int __GFP_NORETRY ;
 struct page* alloc_pages_node (int ,int,int ) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int cpu_to_node (int) ;
 int cpumask_test_cpu (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 void* page_address (struct page*) ;
 int rb_init_page (void*) ;

void *ring_buffer_alloc_read_page(struct ring_buffer *buffer, int cpu)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 struct buffer_data_page *bpage = ((void*)0);
 unsigned long flags;
 struct page *page;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return ERR_PTR(-ENODEV);

 cpu_buffer = buffer->buffers[cpu];
 local_irq_save(flags);
 arch_spin_lock(&cpu_buffer->lock);

 if (cpu_buffer->free_page) {
  bpage = cpu_buffer->free_page;
  cpu_buffer->free_page = ((void*)0);
 }

 arch_spin_unlock(&cpu_buffer->lock);
 local_irq_restore(flags);

 if (bpage)
  goto out;

 page = alloc_pages_node(cpu_to_node(cpu),
    GFP_KERNEL | __GFP_NORETRY, 0);
 if (!page)
  return ERR_PTR(-ENOMEM);

 bpage = page_address(page);

 out:
 rb_init_page(bpage);

 return bpage;
}
