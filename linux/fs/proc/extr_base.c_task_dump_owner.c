
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct user_namespace {int dummy; } ;
struct task_struct {int flags; struct mm_struct* mm; } ;
struct mm_struct {struct user_namespace* user_ns; } ;
struct cred {int egid; int euid; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int PF_KTHREAD ;
 scalar_t__ SUID_DUMP_USER ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 struct cred* __task_cred (struct task_struct*) ;
 scalar_t__ get_dumpable (struct mm_struct*) ;
 int gid_valid (int ) ;
 int make_kgid (struct user_namespace*,int ) ;
 int make_kuid (struct user_namespace*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int uid_valid (int ) ;
 scalar_t__ unlikely (int) ;

void task_dump_owner(struct task_struct *task, umode_t mode,
       kuid_t *ruid, kgid_t *rgid)
{



 const struct cred *cred;
 kuid_t uid;
 kgid_t gid;

 if (unlikely(task->flags & PF_KTHREAD)) {
  *ruid = GLOBAL_ROOT_UID;
  *rgid = GLOBAL_ROOT_GID;
  return;
 }


 rcu_read_lock();
 cred = __task_cred(task);
 uid = cred->euid;
 gid = cred->egid;
 rcu_read_unlock();
 if (mode != (S_IFDIR|S_IRUGO|S_IXUGO)) {
  struct mm_struct *mm;
  task_lock(task);
  mm = task->mm;

  if (mm) {
   if (get_dumpable(mm) != SUID_DUMP_USER) {
    struct user_namespace *user_ns = mm->user_ns;

    uid = make_kuid(user_ns, 0);
    if (!uid_valid(uid))
     uid = GLOBAL_ROOT_UID;

    gid = make_kgid(user_ns, 0);
    if (!gid_valid(gid))
     gid = GLOBAL_ROOT_GID;
   }
  } else {
   uid = GLOBAL_ROOT_UID;
   gid = GLOBAL_ROOT_GID;
  }
  task_unlock(task);
 }
 *ruid = uid;
 *rgid = gid;
}
