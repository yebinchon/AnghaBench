
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_flowtable {int list; int gc_work; int rhashtable; } ;


 int HZ ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int flowtable_lock ;
 int flowtables ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_flow_offload_rhash_params ;
 int nf_flow_offload_work_gc ;
 int queue_delayed_work (int ,int *,int ) ;
 int rhashtable_init (int *,int *) ;
 int system_power_efficient_wq ;

int nf_flow_table_init(struct nf_flowtable *flowtable)
{
 int err;

 INIT_DEFERRABLE_WORK(&flowtable->gc_work, nf_flow_offload_work_gc);

 err = rhashtable_init(&flowtable->rhashtable,
         &nf_flow_offload_rhash_params);
 if (err < 0)
  return err;

 queue_delayed_work(system_power_efficient_wq,
      &flowtable->gc_work, HZ);

 mutex_lock(&flowtable_lock);
 list_add(&flowtable->list, &flowtables);
 mutex_unlock(&flowtable_lock);

 return 0;
}
