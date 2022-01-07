
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskstats {int dummy; } ;
struct task_struct {int dummy; } ;
typedef int pid_t ;


 int ESRCH ;
 int current ;
 int current_user_ns () ;
 int fill_stats (int ,int ,struct task_struct*,struct taskstats*) ;
 struct task_struct* find_get_task_by_vpid (int ) ;
 int put_task_struct (struct task_struct*) ;
 int task_active_pid_ns (int ) ;

__attribute__((used)) static int fill_stats_for_pid(pid_t pid, struct taskstats *stats)
{
 struct task_struct *tsk;

 tsk = find_get_task_by_vpid(pid);
 if (!tsk)
  return -ESRCH;
 fill_stats(current_user_ns(), task_active_pid_ns(current), tsk, stats);
 put_task_struct(tsk);
 return 0;
}
