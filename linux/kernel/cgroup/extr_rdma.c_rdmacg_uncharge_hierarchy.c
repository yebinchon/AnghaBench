
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdmacg_device {int dummy; } ;
struct rdma_cgroup {int css; } ;
typedef enum rdmacg_resource_type { ____Placeholder_rdmacg_resource_type } rdmacg_resource_type ;


 int css_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rdma_cgroup* parent_rdmacg (struct rdma_cgroup*) ;
 int rdmacg_mutex ;
 int uncharge_cg_locked (struct rdma_cgroup*,struct rdmacg_device*,int) ;

__attribute__((used)) static void rdmacg_uncharge_hierarchy(struct rdma_cgroup *cg,
         struct rdmacg_device *device,
         struct rdma_cgroup *stop_cg,
         enum rdmacg_resource_type index)
{
 struct rdma_cgroup *p;

 mutex_lock(&rdmacg_mutex);

 for (p = cg; p != stop_cg; p = parent_rdmacg(p))
  uncharge_cg_locked(p, device, index);

 mutex_unlock(&rdmacg_mutex);

 css_put(&cg->css);
}
