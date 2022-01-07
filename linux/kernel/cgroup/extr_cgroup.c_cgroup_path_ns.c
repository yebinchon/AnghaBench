
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_namespace {int dummy; } ;
struct cgroup {int dummy; } ;


 int cgroup_mutex ;
 int cgroup_path_ns_locked (struct cgroup*,char*,size_t,struct cgroup_namespace*) ;
 int css_set_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int cgroup_path_ns(struct cgroup *cgrp, char *buf, size_t buflen,
     struct cgroup_namespace *ns)
{
 int ret;

 mutex_lock(&cgroup_mutex);
 spin_lock_irq(&css_set_lock);

 ret = cgroup_path_ns_locked(cgrp, buf, buflen, ns);

 spin_unlock_irq(&css_set_lock);
 mutex_unlock(&cgroup_mutex);

 return ret;
}
