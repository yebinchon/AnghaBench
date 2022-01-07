
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {scalar_t__ nr_descendants; scalar_t__ max_descendants; int max_depth; } ;


 int cgroup_mutex ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool cgroup_check_hierarchy_limits(struct cgroup *parent)
{
 struct cgroup *cgroup;
 int ret = 0;
 int level = 1;

 lockdep_assert_held(&cgroup_mutex);

 for (cgroup = parent; cgroup; cgroup = cgroup_parent(cgroup)) {
  if (cgroup->nr_descendants >= cgroup->max_descendants)
   goto fail;

  if (level > cgroup->max_depth)
   goto fail;

  level++;
 }

 ret = 1;
fail:
 return ret;
}
