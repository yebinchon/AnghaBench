
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_chip_generic {unsigned int irq_base; int list; } ;


 int gc_lock ;
 int irq_modify_status (unsigned int,unsigned int,unsigned int) ;
 int irq_set_chip (unsigned int,int *) ;
 int irq_set_chip_data (unsigned int,int *) ;
 int irq_set_handler (unsigned int,int *) ;
 int list_del (int *) ;
 int no_irq_chip ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

void irq_remove_generic_chip(struct irq_chip_generic *gc, u32 msk,
        unsigned int clr, unsigned int set)
{
 unsigned int i = gc->irq_base;

 raw_spin_lock(&gc_lock);
 list_del(&gc->list);
 raw_spin_unlock(&gc_lock);

 for (; msk; msk >>= 1, i++) {
  if (!(msk & 0x01))
   continue;


  irq_set_handler(i, ((void*)0));
  irq_set_chip(i, &no_irq_chip);
  irq_set_chip_data(i, ((void*)0));
  irq_modify_status(i, clr, set);
 }
}
