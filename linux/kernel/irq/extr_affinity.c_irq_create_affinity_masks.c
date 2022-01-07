
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_affinity_desc {int is_managed; int mask; } ;
struct irq_affinity {unsigned int pre_vectors; unsigned int post_vectors; unsigned int nr_sets; unsigned int* set_size; int (* calc_sets ) (struct irq_affinity*,unsigned int) ;} ;


 int GFP_KERNEL ;
 unsigned int IRQ_AFFINITY_MAX_SETS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpumask_copy (int *,int ) ;
 int default_calc_sets (struct irq_affinity*,unsigned int) ;
 int irq_build_affinity_masks (unsigned int,unsigned int,unsigned int,struct irq_affinity_desc*) ;
 int irq_default_affinity ;
 struct irq_affinity_desc* kcalloc (unsigned int,int,int ) ;
 int kfree (struct irq_affinity_desc*) ;
 int stub1 (struct irq_affinity*,unsigned int) ;

struct irq_affinity_desc *
irq_create_affinity_masks(unsigned int nvecs, struct irq_affinity *affd)
{
 unsigned int affvecs, curvec, usedvecs, i;
 struct irq_affinity_desc *masks = ((void*)0);







 if (nvecs > affd->pre_vectors + affd->post_vectors)
  affvecs = nvecs - affd->pre_vectors - affd->post_vectors;
 else
  affvecs = 0;





 if (!affd->calc_sets)
  affd->calc_sets = default_calc_sets;


 affd->calc_sets(affd, affvecs);

 if (WARN_ON_ONCE(affd->nr_sets > IRQ_AFFINITY_MAX_SETS))
  return ((void*)0);


 if (!affvecs)
  return ((void*)0);

 masks = kcalloc(nvecs, sizeof(*masks), GFP_KERNEL);
 if (!masks)
  return ((void*)0);


 for (curvec = 0; curvec < affd->pre_vectors; curvec++)
  cpumask_copy(&masks[curvec].mask, irq_default_affinity);





 for (i = 0, usedvecs = 0; i < affd->nr_sets; i++) {
  unsigned int this_vecs = affd->set_size[i];
  int ret;

  ret = irq_build_affinity_masks(curvec, this_vecs,
            curvec, masks);
  if (ret) {
   kfree(masks);
   return ((void*)0);
  }
  curvec += this_vecs;
  usedvecs += this_vecs;
 }


 if (usedvecs >= affvecs)
  curvec = affd->pre_vectors + affvecs;
 else
  curvec = affd->pre_vectors + usedvecs;
 for (; curvec < nvecs; curvec++)
  cpumask_copy(&masks[curvec].mask, irq_default_affinity);


 for (i = affd->pre_vectors; i < nvecs - affd->post_vectors; i++)
  masks[i].is_managed = 1;

 return masks;
}
