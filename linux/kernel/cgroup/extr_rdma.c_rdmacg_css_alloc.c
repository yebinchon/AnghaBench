
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct rdma_cgroup {struct cgroup_subsys_state css; int rpools; } ;


 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct rdma_cgroup* kzalloc (int,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *
rdmacg_css_alloc(struct cgroup_subsys_state *parent)
{
 struct rdma_cgroup *cg;

 cg = kzalloc(sizeof(*cg), GFP_KERNEL);
 if (!cg)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&cg->rpools);
 return &cg->css;
}
