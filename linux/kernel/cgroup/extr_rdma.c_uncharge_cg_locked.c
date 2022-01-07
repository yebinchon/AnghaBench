
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdmacg_resource_pool {scalar_t__ usage_sum; scalar_t__ num_max_cnt; TYPE_1__* resources; } ;
struct rdmacg_device {int dummy; } ;
struct rdma_cgroup {int dummy; } ;
typedef enum rdmacg_resource_type { ____Placeholder_rdmacg_resource_type } rdmacg_resource_type ;
struct TYPE_2__ {scalar_t__ usage; } ;


 scalar_t__ RDMACG_RESOURCE_MAX ;
 int WARN_ON_ONCE (int) ;
 struct rdmacg_resource_pool* find_cg_rpool_locked (struct rdma_cgroup*,struct rdmacg_device*) ;
 int free_cg_rpool_locked (struct rdmacg_resource_pool*) ;
 int pr_warn (char*,struct rdma_cgroup*,struct rdmacg_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
uncharge_cg_locked(struct rdma_cgroup *cg,
     struct rdmacg_device *device,
     enum rdmacg_resource_type index)
{
 struct rdmacg_resource_pool *rpool;

 rpool = find_cg_rpool_locked(cg, device);






 if (unlikely(!rpool)) {
  pr_warn("Invalid device %p or rdma cgroup %p\n", cg, device);
  return;
 }

 rpool->resources[index].usage--;





 WARN_ON_ONCE(rpool->resources[index].usage < 0);
 rpool->usage_sum--;
 if (rpool->usage_sum == 0 &&
     rpool->num_max_cnt == RDMACG_RESOURCE_MAX) {




  free_cg_rpool_locked(rpool);
 }
}
