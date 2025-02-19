
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int user_ns; int gid; int sgid; int egid; int uid; int suid; int euid; } ;


 int CAP_SYS_RESOURCE ;
 int EPERM ;
 struct cred* __task_cred (struct task_struct*) ;
 struct task_struct* current ;
 struct cred* current_cred () ;
 scalar_t__ gid_eq (int ,int ) ;
 int ns_capable (int ,int ) ;
 int security_task_prlimit (struct cred const*,struct cred const*,unsigned int) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int check_prlimit_permission(struct task_struct *task,
        unsigned int flags)
{
 const struct cred *cred = current_cred(), *tcred;
 bool id_match;

 if (current == task)
  return 0;

 tcred = __task_cred(task);
 id_match = (uid_eq(cred->uid, tcred->euid) &&
      uid_eq(cred->uid, tcred->suid) &&
      uid_eq(cred->uid, tcred->uid) &&
      gid_eq(cred->gid, tcred->egid) &&
      gid_eq(cred->gid, tcred->sgid) &&
      gid_eq(cred->gid, tcred->gid));
 if (!id_match && !ns_capable(tcred->user_ns, CAP_SYS_RESOURCE))
  return -EPERM;

 return security_task_prlimit(cred, tcred, flags);
}
