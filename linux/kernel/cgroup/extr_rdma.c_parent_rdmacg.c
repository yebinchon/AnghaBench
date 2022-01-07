
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct rdma_cgroup {TYPE_1__ css; } ;


 struct rdma_cgroup* css_rdmacg (int ) ;

__attribute__((used)) static struct rdma_cgroup *parent_rdmacg(struct rdma_cgroup *cg)
{
 return css_rdmacg(cg->css.parent);
}
