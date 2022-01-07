
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_affinity_desc {int dummy; } ;
typedef int cpumask_var_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int __irq_build_affinity_masks (unsigned int,unsigned int,unsigned int,int *,int ,int ,struct irq_affinity_desc*) ;
 int * alloc_node_to_cpumask () ;
 int build_node_to_cpumask (int *) ;
 int cpu_possible_mask ;
 int cpu_present_mask ;
 int cpumask_andnot (int ,int ,int ) ;
 int free_cpumask_var (int ) ;
 int free_node_to_cpumask (int *) ;
 int get_online_cpus () ;
 int put_online_cpus () ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
        unsigned int firstvec,
        struct irq_affinity_desc *masks)
{
 unsigned int curvec = startvec, nr_present = 0, nr_others = 0;
 cpumask_var_t *node_to_cpumask;
 cpumask_var_t nmsk, npresmsk;
 int ret = -ENOMEM;

 if (!zalloc_cpumask_var(&nmsk, GFP_KERNEL))
  return ret;

 if (!zalloc_cpumask_var(&npresmsk, GFP_KERNEL))
  goto fail_nmsk;

 node_to_cpumask = alloc_node_to_cpumask();
 if (!node_to_cpumask)
  goto fail_npresmsk;


 get_online_cpus();
 build_node_to_cpumask(node_to_cpumask);


 ret = __irq_build_affinity_masks(curvec, numvecs, firstvec,
      node_to_cpumask, cpu_present_mask,
      nmsk, masks);
 if (ret < 0)
  goto fail_build_affinity;
 nr_present = ret;







 if (nr_present >= numvecs)
  curvec = firstvec;
 else
  curvec = firstvec + nr_present;
 cpumask_andnot(npresmsk, cpu_possible_mask, cpu_present_mask);
 ret = __irq_build_affinity_masks(curvec, numvecs, firstvec,
      node_to_cpumask, npresmsk, nmsk,
      masks);
 if (ret >= 0)
  nr_others = ret;

 fail_build_affinity:
 put_online_cpus();

 if (ret >= 0)
  WARN_ON(nr_present + nr_others < numvecs);

 free_node_to_cpumask(node_to_cpumask);

 fail_npresmsk:
 free_cpumask_var(npresmsk);

 fail_nmsk:
 free_cpumask_var(nmsk);
 return ret < 0 ? ret : 0;
}
