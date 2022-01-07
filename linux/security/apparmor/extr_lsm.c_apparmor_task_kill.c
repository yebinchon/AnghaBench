
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;
struct cred {int dummy; } ;
struct aa_label {int dummy; } ;


 struct aa_label* __begin_current_label_crit_section () ;
 int __end_current_label_crit_section (struct aa_label*) ;
 struct aa_label* aa_get_newest_cred_label (struct cred const*) ;
 struct aa_label* aa_get_task_label (struct task_struct*) ;
 int aa_may_signal (struct aa_label*,struct aa_label*,int) ;
 int aa_put_label (struct aa_label*) ;

__attribute__((used)) static int apparmor_task_kill(struct task_struct *target, struct kernel_siginfo *info,
         int sig, const struct cred *cred)
{
 struct aa_label *cl, *tl;
 int error;

 if (cred) {



  cl = aa_get_newest_cred_label(cred);
  tl = aa_get_task_label(target);
  error = aa_may_signal(cl, tl, sig);
  aa_put_label(cl);
  aa_put_label(tl);
  return error;
 }

 cl = __begin_current_label_crit_section();
 tl = aa_get_task_label(target);
 error = aa_may_signal(cl, tl, sig);
 aa_put_label(tl);
 __end_current_label_crit_section(cl);

 return error;
}
