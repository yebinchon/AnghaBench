
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_root {int hierarchy_id; } ;


 int GFP_KERNEL ;
 int cgroup_hierarchy_idr ;
 int cgroup_mutex ;
 int idr_alloc_cyclic (int *,struct cgroup_root*,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int cgroup_init_root_id(struct cgroup_root *root)
{
 int id;

 lockdep_assert_held(&cgroup_mutex);

 id = idr_alloc_cyclic(&cgroup_hierarchy_idr, root, 0, 0, GFP_KERNEL);
 if (id < 0)
  return id;

 root->hierarchy_id = id;
 return 0;
}
