
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_domain {int rto_cpu; int span; int online; int dlo_mask; int rto_mask; int cpudl; int cpupri; int dl_bw; int rto_push_work; int rto_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpudl_cleanup (int *) ;
 scalar_t__ cpudl_init (int *) ;
 scalar_t__ cpupri_init (int *) ;
 int free_cpumask_var (int ) ;
 int init_dl_bw (int *) ;
 int init_irq_work (int *,int ) ;
 int raw_spin_lock_init (int *) ;
 int rto_push_irq_work_func ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int init_rootdomain(struct root_domain *rd)
{
 if (!zalloc_cpumask_var(&rd->span, GFP_KERNEL))
  goto out;
 if (!zalloc_cpumask_var(&rd->online, GFP_KERNEL))
  goto free_span;
 if (!zalloc_cpumask_var(&rd->dlo_mask, GFP_KERNEL))
  goto free_online;
 if (!zalloc_cpumask_var(&rd->rto_mask, GFP_KERNEL))
  goto free_dlo_mask;







 init_dl_bw(&rd->dl_bw);
 if (cpudl_init(&rd->cpudl) != 0)
  goto free_rto_mask;

 if (cpupri_init(&rd->cpupri) != 0)
  goto free_cpudl;
 return 0;

free_cpudl:
 cpudl_cleanup(&rd->cpudl);
free_rto_mask:
 free_cpumask_var(rd->rto_mask);
free_dlo_mask:
 free_cpumask_var(rd->dlo_mask);
free_online:
 free_cpumask_var(rd->online);
free_span:
 free_cpumask_var(rd->span);
out:
 return -ENOMEM;
}
