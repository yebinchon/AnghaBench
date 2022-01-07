
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdmacg_resource_pool {int dev_node; int cg_node; struct rdmacg_device* device; } ;
struct rdmacg_device {int rpools; } ;
struct rdma_cgroup {int rpools; } ;


 int ENOMEM ;
 struct rdmacg_resource_pool* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct rdmacg_resource_pool* find_cg_rpool_locked (struct rdma_cgroup*,struct rdmacg_device*) ;
 struct rdmacg_resource_pool* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int set_all_resource_max_limit (struct rdmacg_resource_pool*) ;

__attribute__((used)) static struct rdmacg_resource_pool *
get_cg_rpool_locked(struct rdma_cgroup *cg, struct rdmacg_device *device)
{
 struct rdmacg_resource_pool *rpool;

 rpool = find_cg_rpool_locked(cg, device);
 if (rpool)
  return rpool;

 rpool = kzalloc(sizeof(*rpool), GFP_KERNEL);
 if (!rpool)
  return ERR_PTR(-ENOMEM);

 rpool->device = device;
 set_all_resource_max_limit(rpool);

 INIT_LIST_HEAD(&rpool->cg_node);
 INIT_LIST_HEAD(&rpool->dev_node);
 list_add_tail(&rpool->cg_node, &cg->rpools);
 list_add_tail(&rpool->dev_node, &device->rpools);
 return rpool;
}
