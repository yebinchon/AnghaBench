
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dir; } ;


 int proc_remove (int ) ;

void unregister_handler_proc(unsigned int irq, struct irqaction *action)
{
 proc_remove(action->dir);
}
