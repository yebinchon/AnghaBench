
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct kernfs_open_file {int kn; TYPE_3__* file; } ;
struct cgroup {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct TYPE_6__ {TYPE_2__ f_path; } ;
struct TYPE_4__ {int d_sb; } ;


 size_t ENODEV ;
 size_t PTR_ERR_OR_ZERO (struct task_struct*) ;
 size_t cgroup_attach_task (struct cgroup*,struct task_struct*,int) ;
 struct cgroup* cgroup_kn_lock_live (int ,int) ;
 int cgroup_kn_unlock (int ) ;
 int cgroup_procs_write_finish (struct task_struct*) ;
 size_t cgroup_procs_write_permission (struct cgroup*,struct cgroup*,int ) ;
 struct task_struct* cgroup_procs_write_start (char*,int) ;
 int cgrp_dfl_root ;
 int css_set_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct cgroup* task_cgroup_from_root (struct task_struct*,int *) ;

__attribute__((used)) static ssize_t cgroup_procs_write(struct kernfs_open_file *of,
      char *buf, size_t nbytes, loff_t off)
{
 struct cgroup *src_cgrp, *dst_cgrp;
 struct task_struct *task;
 ssize_t ret;

 dst_cgrp = cgroup_kn_lock_live(of->kn, 0);
 if (!dst_cgrp)
  return -ENODEV;

 task = cgroup_procs_write_start(buf, 1);
 ret = PTR_ERR_OR_ZERO(task);
 if (ret)
  goto out_unlock;


 spin_lock_irq(&css_set_lock);
 src_cgrp = task_cgroup_from_root(task, &cgrp_dfl_root);
 spin_unlock_irq(&css_set_lock);

 ret = cgroup_procs_write_permission(src_cgrp, dst_cgrp,
         of->file->f_path.dentry->d_sb);
 if (ret)
  goto out_finish;

 ret = cgroup_attach_task(dst_cgrp, task, 1);

out_finish:
 cgroup_procs_write_finish(task);
out_unlock:
 cgroup_kn_unlock(of->kn);

 return ret ?: nbytes;
}
