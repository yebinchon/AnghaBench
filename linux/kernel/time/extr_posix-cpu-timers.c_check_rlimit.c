
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int comm; } ;


 int SEND_SIG_PRIV ;
 int __group_send_sig_info (int,int ,TYPE_1__*) ;
 TYPE_1__* current ;
 int pr_info (char*,char*,char*,int ,int ) ;
 scalar_t__ print_fatal_signals ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static bool check_rlimit(u64 time, u64 limit, int signo, bool rt, bool hard)
{
 if (time < limit)
  return 0;

 if (print_fatal_signals) {
  pr_info("%s Watchdog Timeout (%s): %s[%d]\n",
   rt ? "RT" : "CPU", hard ? "hard" : "soft",
   current->comm, task_pid_nr(current));
 }
 __group_send_sig_info(signo, SEND_SIG_PRIV, current);
 return 1;
}
