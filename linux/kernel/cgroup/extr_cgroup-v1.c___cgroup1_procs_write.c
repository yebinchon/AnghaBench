
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernfs_open_file {int kn; } ;
struct cred {int suid; int euid; int uid; } ;
struct cgroup {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EACCES ;
 int ENODEV ;
 int GLOBAL_ROOT_UID ;
 int PTR_ERR_OR_ZERO (struct task_struct*) ;
 int cgroup_attach_task (struct cgroup*,struct task_struct*,int) ;
 struct cgroup* cgroup_kn_lock_live (int ,int) ;
 int cgroup_kn_unlock (int ) ;
 int cgroup_procs_write_finish (struct task_struct*) ;
 struct task_struct* cgroup_procs_write_start (char*,int) ;
 struct cred* current_cred () ;
 struct cred* get_task_cred (struct task_struct*) ;
 int put_cred (struct cred const*) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static ssize_t __cgroup1_procs_write(struct kernfs_open_file *of,
         char *buf, size_t nbytes, loff_t off,
         bool threadgroup)
{
 struct cgroup *cgrp;
 struct task_struct *task;
 const struct cred *cred, *tcred;
 ssize_t ret;

 cgrp = cgroup_kn_lock_live(of->kn, 0);
 if (!cgrp)
  return -ENODEV;

 task = cgroup_procs_write_start(buf, threadgroup);
 ret = PTR_ERR_OR_ZERO(task);
 if (ret)
  goto out_unlock;





 cred = current_cred();
 tcred = get_task_cred(task);
 if (!uid_eq(cred->euid, GLOBAL_ROOT_UID) &&
     !uid_eq(cred->euid, tcred->uid) &&
     !uid_eq(cred->euid, tcred->suid))
  ret = -EACCES;
 put_cred(tcred);
 if (ret)
  goto out_finish;

 ret = cgroup_attach_task(cgrp, task, threadgroup);

out_finish:
 cgroup_procs_write_finish(task);
out_unlock:
 cgroup_kn_unlock(of->kn);

 return ret ?: nbytes;
}
