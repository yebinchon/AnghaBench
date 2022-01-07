
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {scalar_t__ global_reserved; scalar_t__ global_available; } ;


 int pr_warn (char*) ;
 int trace_irq_matrix_reserve (struct irq_matrix*) ;

void irq_matrix_reserve(struct irq_matrix *m)
{
 if (m->global_reserved <= m->global_available &&
     m->global_reserved + 1 > m->global_available)
  pr_warn("Interrupt reservation exceeds available resources\n");

 m->global_reserved++;
 trace_irq_matrix_reserve(m);
}
