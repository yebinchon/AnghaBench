
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct cgroup {int dummy; } ;


 int TRACE_CGROUP_PATH (int ,struct cgroup*) ;
 int cgroup_destroy_locked (struct cgroup*) ;
 struct cgroup* cgroup_kn_lock_live (struct kernfs_node*,int) ;
 int cgroup_kn_unlock (struct kernfs_node*) ;
 int rmdir ;

int cgroup_rmdir(struct kernfs_node *kn)
{
 struct cgroup *cgrp;
 int ret = 0;

 cgrp = cgroup_kn_lock_live(kn, 0);
 if (!cgrp)
  return 0;

 ret = cgroup_destroy_locked(cgrp);
 if (!ret)
  TRACE_CGROUP_PATH(rmdir, cgrp);

 cgroup_kn_unlock(kn);
 return ret;
}
