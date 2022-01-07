
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {scalar_t__ type; int dev; scalar_t__ nr_addr_filters; int pmu_disable_count; int entry; } ;


 scalar_t__ PERF_TYPE_MAX ;
 int dev_attr_nr_addr_filters ;
 int device_del (int ) ;
 int device_remove_file (int ,int *) ;
 int free_percpu (int ) ;
 int free_pmu_context (struct pmu*) ;
 int idr_remove (int *,scalar_t__) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pmu_bus_running ;
 int pmu_idr ;
 int pmus_lock ;
 int pmus_srcu ;
 int put_device (int ) ;
 int synchronize_rcu () ;
 int synchronize_srcu (int *) ;

void perf_pmu_unregister(struct pmu *pmu)
{
 mutex_lock(&pmus_lock);
 list_del_rcu(&pmu->entry);





 synchronize_srcu(&pmus_srcu);
 synchronize_rcu();

 free_percpu(pmu->pmu_disable_count);
 if (pmu->type >= PERF_TYPE_MAX)
  idr_remove(&pmu_idr, pmu->type);
 if (pmu_bus_running) {
  if (pmu->nr_addr_filters)
   device_remove_file(pmu->dev, &dev_attr_nr_addr_filters);
  device_del(pmu->dev);
  put_device(pmu->dev);
 }
 free_pmu_context(pmu);
 mutex_unlock(&pmus_lock);
}
