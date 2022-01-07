
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct fown_struct {int signum; } ;
struct TYPE_5__ {int si_signo; int si_code; long si_band; int si_fd; int si_errno; } ;
typedef TYPE_1__ kernel_siginfo_t ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int BUG_ON (int) ;
 int NSIGPOLL ;
 int POLL_IN ;
 int READ_ONCE (int ) ;
 TYPE_1__* SEND_SIG_PRIV ;
 int SIGIO ;
 int SIGPOLL ;
 int SI_SIGIO ;
 int * band_table ;
 int clear_siginfo (TYPE_1__*) ;
 int do_send_sig_info (int,TYPE_1__*,struct task_struct*,int) ;
 long mangle_poll (int ) ;
 int sig_specific_sicodes (int) ;
 int sigio_perm (struct task_struct*,struct fown_struct*,int) ;

__attribute__((used)) static void send_sigio_to_task(struct task_struct *p,
          struct fown_struct *fown,
          int fd, int reason, enum pid_type type)
{




 int signum = READ_ONCE(fown->signum);

 if (!sigio_perm(p, fown, signum))
  return;

 switch (signum) {
  kernel_siginfo_t si;
  default:






   clear_siginfo(&si);
   si.si_signo = signum;
   si.si_errno = 0;
          si.si_code = reason;
   if ((signum != SIGPOLL) && sig_specific_sicodes(signum))
    si.si_code = SI_SIGIO;




   BUG_ON((reason < POLL_IN) || ((reason - POLL_IN) >= NSIGPOLL));
   if (reason - POLL_IN >= NSIGPOLL)
    si.si_band = ~0L;
   else
    si.si_band = mangle_poll(band_table[reason - POLL_IN]);
   si.si_fd = fd;
   if (!do_send_sig_info(signum, &si, p, type))
    break;

  case 0:
   do_send_sig_info(SIGIO, SEND_SIG_PRIV, p, type);
 }
}
