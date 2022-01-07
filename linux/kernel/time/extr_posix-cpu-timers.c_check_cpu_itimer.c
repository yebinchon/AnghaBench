
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct cpu_itimer {scalar_t__ expires; scalar_t__ incr; } ;


 int ITIMER_PROF ;
 int ITIMER_VIRTUAL ;
 int SEND_SIG_PRIV ;
 int SIGPROF ;
 int __group_send_sig_info (int,int ,struct task_struct*) ;
 int task_tgid (struct task_struct*) ;
 int trace_itimer_expire (int ,int ,scalar_t__) ;

__attribute__((used)) static void check_cpu_itimer(struct task_struct *tsk, struct cpu_itimer *it,
        u64 *expires, u64 cur_time, int signo)
{
 if (!it->expires)
  return;

 if (cur_time >= it->expires) {
  if (it->incr)
   it->expires += it->incr;
  else
   it->expires = 0;

  trace_itimer_expire(signo == SIGPROF ?
        ITIMER_PROF : ITIMER_VIRTUAL,
        task_tgid(tsk), cur_time);
  __group_send_sig_info(signo, SEND_SIG_PRIV, tsk);
 }

 if (it->expires && it->expires < *expires)
  *expires = it->expires;
}
