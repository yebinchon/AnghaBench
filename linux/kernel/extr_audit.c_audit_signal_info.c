
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int kuid_t ;


 int SIGHUP ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int audit_get_loginuid (int ) ;
 int audit_sig_pid ;
 int audit_sig_sid ;
 int audit_sig_uid ;
 int audit_signal_info_syscall (struct task_struct*) ;
 scalar_t__ auditd_test_task (struct task_struct*) ;
 int current ;
 int current_uid () ;
 int security_task_getsecid (int ,int *) ;
 int task_tgid_nr (int ) ;
 scalar_t__ uid_valid (int ) ;

int audit_signal_info(int sig, struct task_struct *t)
{
 kuid_t uid = current_uid(), auid;

 if (auditd_test_task(t) &&
     (sig == SIGTERM || sig == SIGHUP ||
      sig == SIGUSR1 || sig == SIGUSR2)) {
  audit_sig_pid = task_tgid_nr(current);
  auid = audit_get_loginuid(current);
  if (uid_valid(auid))
   audit_sig_uid = auid;
  else
   audit_sig_uid = uid;
  security_task_getsecid(current, &audit_sig_sid);
 }

 return audit_signal_info_syscall(t);
}
