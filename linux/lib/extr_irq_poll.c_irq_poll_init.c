
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_poll {int weight; int * poll; int list; } ;
typedef int irq_poll_fn ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct irq_poll*,int ,int) ;

void irq_poll_init(struct irq_poll *iop, int weight, irq_poll_fn *poll_fn)
{
 memset(iop, 0, sizeof(*iop));
 INIT_LIST_HEAD(&iop->list);
 iop->weight = weight;
 iop->poll = poll_fn;
}
