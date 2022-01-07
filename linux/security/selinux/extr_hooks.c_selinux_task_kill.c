
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;
struct cred {int dummy; } ;


 int PROCESS__SIGNULL ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int cred_sid (struct cred const*) ;
 int current_sid () ;
 int selinux_state ;
 int signal_to_av (int) ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_task_kill(struct task_struct *p, struct kernel_siginfo *info,
    int sig, const struct cred *cred)
{
 u32 secid;
 u32 perm;

 if (!sig)
  perm = PROCESS__SIGNULL;
 else
  perm = signal_to_av(sig);
 if (!cred)
  secid = current_sid();
 else
  secid = cred_sid(cred);
 return avc_has_perm(&selinux_state,
       secid, task_sid(p), SECCLASS_PROCESS, perm, ((void*)0));
}
