
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocated_irqs ;
 unsigned int find_next_bit (int ,int ,unsigned int) ;
 int nr_irqs ;

unsigned int irq_get_next_irq(unsigned int offset)
{
 return find_next_bit(allocated_irqs, nr_irqs, offset);
}
