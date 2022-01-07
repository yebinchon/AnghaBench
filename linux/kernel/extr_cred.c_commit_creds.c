
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct cred const* cred; struct cred const* real_cred; scalar_t__ pdeath_signal; scalar_t__ mm; } ;
typedef struct cred {int fsgid; int sgid; int egid; int gid; int fsuid; int suid; int euid; int uid; TYPE_1__* user; int usage; } const cred ;
struct TYPE_2__ {int processes; } ;


 int BUG_ON (int) ;
 int PROC_EVENT_GID ;
 int PROC_EVENT_UID ;
 int alter_cred_subscribers (struct cred const*,int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int cred_cap_issubset (struct cred const*,struct cred const*) ;
 struct task_struct* current ;
 int get_cred (struct cred const*) ;
 int gid_eq (int ,int ) ;
 int kdebug (char*,struct cred const*,int,int) ;
 int key_fsgid_changed (struct cred const*) ;
 int key_fsuid_changed (struct cred const*) ;
 int proc_id_connector (struct task_struct*,int ) ;
 int put_cred (struct cred const*) ;
 int rcu_assign_pointer (struct cred const*,struct cred const*) ;
 int read_cred_subscribers (struct cred const*) ;
 int set_dumpable (scalar_t__,int ) ;
 int smp_wmb () ;
 int suid_dumpable ;
 int uid_eq (int ,int ) ;
 int validate_creds (struct cred const*) ;

int commit_creds(struct cred *new)
{
 struct task_struct *task = current;
 const struct cred *old = task->real_cred;

 kdebug("commit_creds(%p{%d,%d})", new,
        atomic_read(&new->usage),
        read_cred_subscribers(new));

 BUG_ON(task->cred != old);





 BUG_ON(atomic_read(&new->usage) < 1);

 get_cred(new);


 if (!uid_eq(old->euid, new->euid) ||
     !gid_eq(old->egid, new->egid) ||
     !uid_eq(old->fsuid, new->fsuid) ||
     !gid_eq(old->fsgid, new->fsgid) ||
     !cred_cap_issubset(old, new)) {
  if (task->mm)
   set_dumpable(task->mm, suid_dumpable);
  task->pdeath_signal = 0;
  smp_wmb();
 }


 if (!uid_eq(new->fsuid, old->fsuid))
  key_fsuid_changed(new);
 if (!gid_eq(new->fsgid, old->fsgid))
  key_fsgid_changed(new);





 alter_cred_subscribers(new, 2);
 if (new->user != old->user)
  atomic_inc(&new->user->processes);
 rcu_assign_pointer(task->real_cred, new);
 rcu_assign_pointer(task->cred, new);
 if (new->user != old->user)
  atomic_dec(&old->user->processes);
 alter_cred_subscribers(old, -2);


 if (!uid_eq(new->uid, old->uid) ||
     !uid_eq(new->euid, old->euid) ||
     !uid_eq(new->suid, old->suid) ||
     !uid_eq(new->fsuid, old->fsuid))
  proc_id_connector(task, PROC_EVENT_UID);

 if (!gid_eq(new->gid, old->gid) ||
     !gid_eq(new->egid, old->egid) ||
     !gid_eq(new->sgid, old->sgid) ||
     !gid_eq(new->fsgid, old->fsgid))
  proc_id_connector(task, PROC_EVENT_GID);


 put_cred(old);
 put_cred(old);
 return 0;
}
