
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_root {int hierarchy_id; } ;


 int cgroup_hierarchy_idr ;
 int cgroup_mutex ;
 int idr_remove (int *,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void cgroup_exit_root_id(struct cgroup_root *root)
{
 lockdep_assert_held(&cgroup_mutex);

 idr_remove(&cgroup_hierarchy_idr, root->hierarchy_id);
}
