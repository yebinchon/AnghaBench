
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {struct kernfs_node* parent; struct cgroup* priv; } ;
struct cgroup {int dummy; } ;


 int EIO ;
 int ENOTDIR ;
 scalar_t__ KERNFS_DIR ;
 int TRACE_CGROUP_PATH (int ,struct cgroup*) ;
 int cgroup_mutex ;
 int kernfs_break_active_protection (struct kernfs_node*) ;
 int kernfs_rename (struct kernfs_node*,struct kernfs_node*,char const*) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 int kernfs_unbreak_active_protection (struct kernfs_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rename ;

__attribute__((used)) static int cgroup1_rename(struct kernfs_node *kn, struct kernfs_node *new_parent,
     const char *new_name_str)
{
 struct cgroup *cgrp = kn->priv;
 int ret;

 if (kernfs_type(kn) != KERNFS_DIR)
  return -ENOTDIR;
 if (kn->parent != new_parent)
  return -EIO;






 kernfs_break_active_protection(new_parent);
 kernfs_break_active_protection(kn);

 mutex_lock(&cgroup_mutex);

 ret = kernfs_rename(kn, new_parent, new_name_str);
 if (!ret)
  TRACE_CGROUP_PATH(rename, cgrp);

 mutex_unlock(&cgroup_mutex);

 kernfs_unbreak_active_protection(kn);
 kernfs_unbreak_active_protection(new_parent);
 return ret;
}
