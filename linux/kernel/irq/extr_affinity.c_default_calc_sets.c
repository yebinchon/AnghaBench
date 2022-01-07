
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_affinity {int nr_sets; unsigned int* set_size; } ;



__attribute__((used)) static void default_calc_sets(struct irq_affinity *affd, unsigned int affvecs)
{
 affd->nr_sets = 1;
 affd->set_size[0] = affvecs;
}
