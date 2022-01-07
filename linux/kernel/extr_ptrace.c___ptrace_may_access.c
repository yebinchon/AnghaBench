
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mm_struct* mm; } ;
struct mm_struct {int user_ns; } ;
struct cred {int user_ns; int gid; int sgid; int egid; int uid; int suid; int euid; int fsgid; int fsuid; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int EPERM ;
 unsigned int PTRACE_MODE_FSCREDS ;
 unsigned int PTRACE_MODE_REALCREDS ;
 scalar_t__ SUID_DUMP_USER ;
 int WARN (int,char*) ;
 struct cred* __task_cred (struct task_struct*) ;
 int current ;
 struct cred* current_cred () ;
 scalar_t__ get_dumpable (struct mm_struct*) ;
 scalar_t__ gid_eq (int ,int ) ;
 scalar_t__ ptrace_has_cap (int ,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ same_thread_group (struct task_struct*,int ) ;
 int security_ptrace_access_check (struct task_struct*,unsigned int) ;
 int smp_rmb () ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int __ptrace_may_access(struct task_struct *task, unsigned int mode)
{
 const struct cred *cred = current_cred(), *tcred;
 struct mm_struct *mm;
 kuid_t caller_uid;
 kgid_t caller_gid;

 if (!(mode & PTRACE_MODE_FSCREDS) == !(mode & PTRACE_MODE_REALCREDS)) {
  WARN(1, "denying ptrace access check without PTRACE_MODE_*CREDS\n");
  return -EPERM;
 }
 if (same_thread_group(task, current))
  return 0;
 rcu_read_lock();
 if (mode & PTRACE_MODE_FSCREDS) {
  caller_uid = cred->fsuid;
  caller_gid = cred->fsgid;
 } else {
  caller_uid = cred->uid;
  caller_gid = cred->gid;
 }
 tcred = __task_cred(task);
 if (uid_eq(caller_uid, tcred->euid) &&
     uid_eq(caller_uid, tcred->suid) &&
     uid_eq(caller_uid, tcred->uid) &&
     gid_eq(caller_gid, tcred->egid) &&
     gid_eq(caller_gid, tcred->sgid) &&
     gid_eq(caller_gid, tcred->gid))
  goto ok;
 if (ptrace_has_cap(tcred->user_ns, mode))
  goto ok;
 rcu_read_unlock();
 return -EPERM;
ok:
 rcu_read_unlock();
 smp_rmb();
 mm = task->mm;
 if (mm &&
     ((get_dumpable(mm) != SUID_DUMP_USER) &&
      !ptrace_has_cap(mm->user_ns, mode)))
     return -EPERM;

 return security_ptrace_access_check(task, mode);
}
