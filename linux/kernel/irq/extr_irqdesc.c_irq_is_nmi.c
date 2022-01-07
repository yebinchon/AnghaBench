
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; } ;


 int IRQS_NMI ;

__attribute__((used)) static bool irq_is_nmi(struct irq_desc *desc)
{
 return desc->istate & IRQS_NMI;
}
