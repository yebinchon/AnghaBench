
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;


 struct rdma_cgroup* css_rdmacg (struct cgroup_subsys_state*) ;
 int kfree (struct rdma_cgroup*) ;

__attribute__((used)) static void rdmacg_css_free(struct cgroup_subsys_state *css)
{
 struct rdma_cgroup *cg = css_rdmacg(css);

 kfree(cg);
}
