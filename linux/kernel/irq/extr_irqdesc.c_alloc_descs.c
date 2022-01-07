
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct module {int dummy; } ;
struct irq_desc {struct module* owner; } ;
struct irq_affinity_desc {int dummy; } ;


 int allocated_irqs ;
 int bitmap_set (int ,unsigned int,unsigned int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

__attribute__((used)) static inline int alloc_descs(unsigned int start, unsigned int cnt, int node,
         const struct irq_affinity_desc *affinity,
         struct module *owner)
{
 u32 i;

 for (i = 0; i < cnt; i++) {
  struct irq_desc *desc = irq_to_desc(start + i);

  desc->owner = owner;
 }
 bitmap_set(allocated_irqs, start, cnt);
 return start;
}
