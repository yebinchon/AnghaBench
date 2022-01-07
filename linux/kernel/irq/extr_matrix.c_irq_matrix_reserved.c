
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_matrix {unsigned int global_reserved; } ;



unsigned int irq_matrix_reserved(struct irq_matrix *m)
{
 return m->global_reserved;
}
