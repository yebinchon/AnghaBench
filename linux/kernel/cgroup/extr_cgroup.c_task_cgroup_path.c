
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup_root {int dummy; } ;
struct cgroup {int dummy; } ;


 int cgroup_hierarchy_idr ;
 int cgroup_mutex ;
 int cgroup_path_ns_locked (struct cgroup*,char*,size_t,int *) ;
 int css_set_lock ;
 struct cgroup_root* idr_get_next (int *,int*) ;
 int init_cgroup_ns ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strlcpy (char*,char*,size_t) ;
 struct cgroup* task_cgroup_from_root (struct task_struct*,struct cgroup_root*) ;

int task_cgroup_path(struct task_struct *task, char *buf, size_t buflen)
{
 struct cgroup_root *root;
 struct cgroup *cgrp;
 int hierarchy_id = 1;
 int ret;

 mutex_lock(&cgroup_mutex);
 spin_lock_irq(&css_set_lock);

 root = idr_get_next(&cgroup_hierarchy_idr, &hierarchy_id);

 if (root) {
  cgrp = task_cgroup_from_root(task, root);
  ret = cgroup_path_ns_locked(cgrp, buf, buflen, &init_cgroup_ns);
 } else {

  ret = strlcpy(buf, "/", buflen);
 }

 spin_unlock_irq(&css_set_lock);
 mutex_unlock(&cgroup_mutex);
 return ret;
}
