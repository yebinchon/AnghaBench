
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernfs_node {struct cgroup* priv; } ;
struct cgroup {int dummy; } ;
struct TYPE_3__ {int kn; } ;
struct TYPE_4__ {TYPE_1__ cgrp; } ;


 int ENOENT ;
 int ENOTDIR ;
 struct cgroup* ERR_PTR (int ) ;
 scalar_t__ KERNFS_DIR ;
 int cgroup_get_live (struct cgroup*) ;
 int cgroup_mutex ;
 TYPE_2__ cgrp_dfl_root ;
 int kernfs_put (struct kernfs_node*) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 struct kernfs_node* kernfs_walk_and_get (int ,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct cgroup *cgroup_get_from_path(const char *path)
{
 struct kernfs_node *kn;
 struct cgroup *cgrp;

 mutex_lock(&cgroup_mutex);

 kn = kernfs_walk_and_get(cgrp_dfl_root.cgrp.kn, path);
 if (kn) {
  if (kernfs_type(kn) == KERNFS_DIR) {
   cgrp = kn->priv;
   cgroup_get_live(cgrp);
  } else {
   cgrp = ERR_PTR(-ENOTDIR);
  }
  kernfs_put(kn);
 } else {
  cgrp = ERR_PTR(-ENOENT);
 }

 mutex_unlock(&cgroup_mutex);
 return cgrp;
}
