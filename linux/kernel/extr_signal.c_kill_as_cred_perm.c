
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int uid; int suid; int euid; } ;


 struct cred* __task_cred (struct task_struct*) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static inline bool kill_as_cred_perm(const struct cred *cred,
         struct task_struct *target)
{
 const struct cred *pcred = __task_cred(target);

 return uid_eq(cred->euid, pcred->suid) ||
        uid_eq(cred->euid, pcred->uid) ||
        uid_eq(cred->uid, pcred->suid) ||
        uid_eq(cred->uid, pcred->uid);
}
