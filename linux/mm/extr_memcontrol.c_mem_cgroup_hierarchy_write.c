
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {struct cgroup_subsys_state* parent; } ;
struct mem_cgroup {int use_hierarchy; TYPE_1__ css; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct mem_cgroup* mem_cgroup_from_css (struct cgroup_subsys_state*) ;
 int memcg_has_children (struct mem_cgroup*) ;

__attribute__((used)) static int mem_cgroup_hierarchy_write(struct cgroup_subsys_state *css,
          struct cftype *cft, u64 val)
{
 int retval = 0;
 struct mem_cgroup *memcg = mem_cgroup_from_css(css);
 struct mem_cgroup *parent_memcg = mem_cgroup_from_css(memcg->css.parent);

 if (memcg->use_hierarchy == val)
  return 0;
 if ((!parent_memcg || !parent_memcg->use_hierarchy) &&
    (val == 1 || val == 0)) {
  if (!memcg_has_children(memcg))
   memcg->use_hierarchy = val;
  else
   retval = -EBUSY;
 } else
  retval = -EINVAL;

 return retval;
}
