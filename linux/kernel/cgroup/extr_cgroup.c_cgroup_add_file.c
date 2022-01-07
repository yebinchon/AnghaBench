
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cgroup_file {struct kernfs_node* kn; int notify_timer; } ;
struct cgroup {int kn; } ;
struct cftype {int file_offset; int kf_ops; struct lock_class_key lockdep_key; } ;


 int CGROUP_FILE_NAME_MAX ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 struct kernfs_node* __kernfs_create_file (int ,int ,int ,int ,int ,int ,int ,struct cftype*,int *,struct lock_class_key*) ;
 int cgroup_file_kn_lock ;
 int cgroup_file_mode (struct cftype*) ;
 int cgroup_file_name (struct cgroup*,struct cftype*,char*) ;
 int cgroup_file_notify_timer ;
 int cgroup_kn_set_ugid (struct kernfs_node*) ;
 int kernfs_remove (struct kernfs_node*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int cgroup_add_file(struct cgroup_subsys_state *css, struct cgroup *cgrp,
      struct cftype *cft)
{
 char name[CGROUP_FILE_NAME_MAX];
 struct kernfs_node *kn;
 struct lock_class_key *key = ((void*)0);
 int ret;




 kn = __kernfs_create_file(cgrp->kn, cgroup_file_name(cgrp, cft, name),
      cgroup_file_mode(cft),
      GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
      0, cft->kf_ops, cft,
      ((void*)0), key);
 if (IS_ERR(kn))
  return PTR_ERR(kn);

 ret = cgroup_kn_set_ugid(kn);
 if (ret) {
  kernfs_remove(kn);
  return ret;
 }

 if (cft->file_offset) {
  struct cgroup_file *cfile = (void *)css + cft->file_offset;

  timer_setup(&cfile->notify_timer, cgroup_file_notify_timer, 0);

  spin_lock_irq(&cgroup_file_kn_lock);
  cfile->kn = kn;
  spin_unlock_irq(&cgroup_file_kn_lock);
 }

 return 0;
}
