
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cred {int dummy; } ;


 unsigned int LSM_PRLIMIT_READ ;
 unsigned int LSM_PRLIMIT_WRITE ;
 int PROCESS__GETRLIMIT ;
 int PROCESS__SETRLIMIT ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int cred_sid (struct cred const*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_task_prlimit(const struct cred *cred, const struct cred *tcred,
    unsigned int flags)
{
 u32 av = 0;

 if (!flags)
  return 0;
 if (flags & LSM_PRLIMIT_WRITE)
  av |= PROCESS__SETRLIMIT;
 if (flags & LSM_PRLIMIT_READ)
  av |= PROCESS__GETRLIMIT;
 return avc_has_perm(&selinux_state,
       cred_sid(cred), cred_sid(tcred),
       SECCLASS_PROCESS, av, ((void*)0));
}
