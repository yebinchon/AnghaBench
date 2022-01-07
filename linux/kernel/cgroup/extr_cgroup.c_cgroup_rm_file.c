
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct cgroup_file {int notify_timer; int * kn; } ;
struct cgroup {int kn; } ;
struct cftype {int file_offset; int ss; } ;


 int CGROUP_FILE_NAME_MAX ;
 struct cgroup_subsys_state* cgroup_css (struct cgroup*,int ) ;
 int cgroup_file_kn_lock ;
 int cgroup_file_name (struct cgroup*,struct cftype const*,char*) ;
 int cgroup_mutex ;
 int del_timer_sync (int *) ;
 int kernfs_remove_by_name (int ,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void cgroup_rm_file(struct cgroup *cgrp, const struct cftype *cft)
{
 char name[CGROUP_FILE_NAME_MAX];

 lockdep_assert_held(&cgroup_mutex);

 if (cft->file_offset) {
  struct cgroup_subsys_state *css = cgroup_css(cgrp, cft->ss);
  struct cgroup_file *cfile = (void *)css + cft->file_offset;

  spin_lock_irq(&cgroup_file_kn_lock);
  cfile->kn = ((void*)0);
  spin_unlock_irq(&cgroup_file_kn_lock);

  del_timer_sync(&cfile->notify_timer);
 }

 kernfs_remove_by_name(cgrp->kn, cgroup_file_name(cgrp, cft, name));
}
