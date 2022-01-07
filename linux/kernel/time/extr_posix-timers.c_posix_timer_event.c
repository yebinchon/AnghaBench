
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct k_itimer {int it_sigev_notify; int it_pid; TYPE_2__* sigq; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_3__ {int si_sys_private; } ;
struct TYPE_4__ {TYPE_1__ info; } ;


 int PIDTYPE_PID ;
 int PIDTYPE_TGID ;
 int SIGEV_THREAD_ID ;
 int send_sigqueue (TYPE_2__*,int ,int) ;

int posix_timer_event(struct k_itimer *timr, int si_private)
{
 enum pid_type type;
 int ret = -1;
 timr->sigq->info.si_sys_private = si_private;

 type = !(timr->it_sigev_notify & SIGEV_THREAD_ID) ? PIDTYPE_TGID : PIDTYPE_PID;
 ret = send_sigqueue(timr->sigq, timr->it_pid, type);

 return ret > 0;
}
