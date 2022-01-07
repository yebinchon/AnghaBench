
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int pobjects; int pages; struct page* next; scalar_t__ inuse; scalar_t__ objects; } ;
struct kmem_cache {int cpu_partial; TYPE_1__* cpu_slab; } ;
struct TYPE_2__ {int partial; } ;


 int CPU_PARTIAL_DRAIN ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int stat (struct kmem_cache*,int ) ;
 struct page* this_cpu_cmpxchg (int ,struct page*,struct page*) ;
 int this_cpu_ptr (TYPE_1__*) ;
 struct page* this_cpu_read (int ) ;
 int unfreeze_partials (struct kmem_cache*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void put_cpu_partial(struct kmem_cache *s, struct page *page, int drain)
{
}
