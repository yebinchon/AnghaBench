
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; } ;


 int desc_set_defaults (unsigned int,struct irq_desc*,int ,int *,int *) ;
 int irq_desc_get_node (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_desc(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long flags;

 raw_spin_lock_irqsave(&desc->lock, flags);
 desc_set_defaults(irq, desc, irq_desc_get_node(desc), ((void*)0), ((void*)0));
 raw_spin_unlock_irqrestore(&desc->lock, flags);
}
