
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct task_struct {int dummy; } ;
struct kernel_siginfo {scalar_t__ si_code; scalar_t__ si_pid; int si_uid; } ;
typedef int kuid_t ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 struct kernel_siginfo* SEND_SIG_NOINFO ;
 struct kernel_siginfo* SEND_SIG_PRIV ;
 scalar_t__ SI_KERNEL ;
 int __send_signal (int,struct kernel_siginfo*,struct task_struct*,int,int) ;
 int current ;
 struct user_namespace* current_user_ns () ;
 int from_kuid_munged (struct user_namespace*,int ) ;
 scalar_t__ has_si_pid_and_uid (struct kernel_siginfo*) ;
 int make_kuid (struct user_namespace*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_active_pid_ns (struct task_struct*) ;
 struct user_namespace* task_cred_xxx (struct task_struct*,int ) ;
 int task_pid_nr_ns (int ,int ) ;
 int user_ns ;

__attribute__((used)) static int send_signal(int sig, struct kernel_siginfo *info, struct task_struct *t,
   enum pid_type type)
{

 bool force = 0;

 if (info == SEND_SIG_NOINFO) {

  force = !task_pid_nr_ns(current, task_active_pid_ns(t));
 } else if (info == SEND_SIG_PRIV) {

  force = 1;
 } else if (has_si_pid_and_uid(info)) {

  struct user_namespace *t_user_ns;

  rcu_read_lock();
  t_user_ns = task_cred_xxx(t, user_ns);
  if (current_user_ns() != t_user_ns) {
   kuid_t uid = make_kuid(current_user_ns(), info->si_uid);
   info->si_uid = from_kuid_munged(t_user_ns, uid);
  }
  rcu_read_unlock();


  force = (info->si_code == SI_KERNEL);


  if (!task_pid_nr_ns(current, task_active_pid_ns(t))) {
   info->si_pid = 0;
   force = 1;
  }
 }
 return __send_signal(sig, info, t, type, force);
}
