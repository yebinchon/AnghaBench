
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_pid_list {scalar_t__ pid_max; int pids; } ;
typedef scalar_t__ pid_t ;


 int test_bit (scalar_t__,int ) ;

bool
trace_find_filtered_pid(struct trace_pid_list *filtered_pids, pid_t search_pid)
{




 if (search_pid >= filtered_pids->pid_max)
  return 0;

 return test_bit(search_pid, filtered_pids->pids);
}
