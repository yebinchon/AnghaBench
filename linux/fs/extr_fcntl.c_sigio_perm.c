
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct fown_struct {int uid; int euid; } ;
struct cred {int uid; int suid; } ;


 int GLOBAL_ROOT_UID ;
 struct cred* __task_cred (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_file_send_sigiotask (struct task_struct*,struct fown_struct*,int) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static inline int sigio_perm(struct task_struct *p,
                             struct fown_struct *fown, int sig)
{
 const struct cred *cred;
 int ret;

 rcu_read_lock();
 cred = __task_cred(p);
 ret = ((uid_eq(fown->euid, GLOBAL_ROOT_UID) ||
  uid_eq(fown->euid, cred->suid) || uid_eq(fown->euid, cred->uid) ||
  uid_eq(fown->uid, cred->suid) || uid_eq(fown->uid, cred->uid)) &&
        !security_file_send_sigiotask(p, fown, sig));
 rcu_read_unlock();
 return ret;
}
