
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ops; } ;
struct cgroup_namespace {TYPE_1__ ns; int count; } ;


 int ENOMEM ;
 struct cgroup_namespace* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int cgroupns_operations ;
 int kfree (struct cgroup_namespace*) ;
 struct cgroup_namespace* kzalloc (int,int ) ;
 int ns_alloc_inum (TYPE_1__*) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct cgroup_namespace *alloc_cgroup_ns(void)
{
 struct cgroup_namespace *new_ns;
 int ret;

 new_ns = kzalloc(sizeof(struct cgroup_namespace), GFP_KERNEL);
 if (!new_ns)
  return ERR_PTR(-ENOMEM);
 ret = ns_alloc_inum(&new_ns->ns);
 if (ret) {
  kfree(new_ns);
  return ERR_PTR(ret);
 }
 refcount_set(&new_ns->count, 1);
 new_ns->ns.ops = &cgroupns_operations;
 return new_ns;
}
