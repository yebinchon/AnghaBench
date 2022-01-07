
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int user_ns; int uid; int suid; int euid; } ;


 int CAP_KILL ;
 struct cred* __task_cred (struct task_struct*) ;
 struct cred* current_cred () ;
 scalar_t__ ns_capable (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool kill_ok_by_cred(struct task_struct *t)
{
 const struct cred *cred = current_cred();
 const struct cred *tcred = __task_cred(t);

 return uid_eq(cred->euid, tcred->suid) ||
        uid_eq(cred->euid, tcred->uid) ||
        uid_eq(cred->uid, tcred->suid) ||
        uid_eq(cred->uid, tcred->uid) ||
        ns_capable(tcred->user_ns, CAP_KILL);
}
