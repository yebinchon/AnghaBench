
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {int global_reserved; } ;


 int trace_irq_matrix_remove_reserved (struct irq_matrix*) ;

void irq_matrix_remove_reserved(struct irq_matrix *m)
{
 m->global_reserved--;
 trace_irq_matrix_remove_reserved(m);
}
