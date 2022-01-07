
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int user_ns; int euid; int uid; } ;


 int CAP_SYS_NICE ;
 struct cred* __task_cred (struct task_struct*) ;
 struct cred* current_cred () ;
 scalar_t__ ns_capable (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool set_one_prio_perm(struct task_struct *p)
{
 const struct cred *cred = current_cred(), *pcred = __task_cred(p);

 if (uid_eq(pcred->uid, cred->euid) ||
     uid_eq(pcred->euid, cred->euid))
  return 1;
 if (ns_capable(pcred->user_ns, CAP_SYS_NICE))
  return 1;
 return 0;
}
