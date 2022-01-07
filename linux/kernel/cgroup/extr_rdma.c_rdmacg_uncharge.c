
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdmacg_device {int dummy; } ;
struct rdma_cgroup {int dummy; } ;
typedef enum rdmacg_resource_type { ____Placeholder_rdmacg_resource_type } rdmacg_resource_type ;


 int RDMACG_RESOURCE_MAX ;
 int rdmacg_uncharge_hierarchy (struct rdma_cgroup*,struct rdmacg_device*,int *,int) ;

void rdmacg_uncharge(struct rdma_cgroup *cg,
       struct rdmacg_device *device,
       enum rdmacg_resource_type index)
{
 if (index >= RDMACG_RESOURCE_MAX)
  return;

 rdmacg_uncharge_hierarchy(cg, device, ((void*)0), index);
}
