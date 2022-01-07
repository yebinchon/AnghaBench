
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {scalar_t__ pid; int gid; int uid; } ;
struct cred {int user_ns; int sgid; int egid; int gid; int suid; int euid; int uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_2__ {int user_ns; } ;


 int CAP_SETGID ;
 int CAP_SETUID ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int current ;
 struct cred* current_cred () ;
 scalar_t__ gid_eq (int ,int ) ;
 int gid_valid (int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 scalar_t__ ns_capable (int ,int ) ;
 TYPE_1__* task_active_pid_ns (int ) ;
 scalar_t__ task_tgid_vnr (int ) ;
 scalar_t__ uid_eq (int ,int ) ;
 int uid_valid (int ) ;

__attribute__((used)) static __inline__ int scm_check_creds(struct ucred *creds)
{
 const struct cred *cred = current_cred();
 kuid_t uid = make_kuid(cred->user_ns, creds->uid);
 kgid_t gid = make_kgid(cred->user_ns, creds->gid);

 if (!uid_valid(uid) || !gid_valid(gid))
  return -EINVAL;

 if ((creds->pid == task_tgid_vnr(current) ||
      ns_capable(task_active_pid_ns(current)->user_ns, CAP_SYS_ADMIN)) &&
     ((uid_eq(uid, cred->uid) || uid_eq(uid, cred->euid) ||
       uid_eq(uid, cred->suid)) || ns_capable(cred->user_ns, CAP_SETUID)) &&
     ((gid_eq(gid, cred->gid) || gid_eq(gid, cred->egid) ||
       gid_eq(gid, cred->sgid)) || ns_capable(cred->user_ns, CAP_SETGID))) {
        return 0;
 }
 return -EPERM;
}
