
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {TYPE_1__* parent; struct cgroup* priv; } ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup* priv; } ;


 scalar_t__ KERNFS_DIR ;
 int cgroup_is_dead (struct cgroup*) ;
 int cgroup_kn_unlock (struct kernfs_node*) ;
 int cgroup_lock_and_drain_offline (struct cgroup*) ;
 int cgroup_mutex ;
 int cgroup_tryget (struct cgroup*) ;
 int kernfs_break_active_protection (struct kernfs_node*) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 int mutex_lock (int *) ;

struct cgroup *cgroup_kn_lock_live(struct kernfs_node *kn, bool drain_offline)
{
 struct cgroup *cgrp;

 if (kernfs_type(kn) == KERNFS_DIR)
  cgrp = kn->priv;
 else
  cgrp = kn->parent->priv;







 if (!cgroup_tryget(cgrp))
  return ((void*)0);
 kernfs_break_active_protection(kn);

 if (drain_offline)
  cgroup_lock_and_drain_offline(cgrp);
 else
  mutex_lock(&cgroup_mutex);

 if (!cgroup_is_dead(cgrp))
  return cgrp;

 cgroup_kn_unlock(kn);
 return ((void*)0);
}
