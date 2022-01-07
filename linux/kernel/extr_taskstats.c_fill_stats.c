
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct taskstats {int nivcsw; int nvcsw; int version; } ;
struct task_struct {int nivcsw; int nvcsw; } ;
struct pid_namespace {int dummy; } ;


 int TASKSTATS_VERSION ;
 int bacct_add_tsk (struct user_namespace*,struct pid_namespace*,struct taskstats*,struct task_struct*) ;
 int delayacct_add_tsk (struct taskstats*,struct task_struct*) ;
 int memset (struct taskstats*,int ,int) ;
 int xacct_add_tsk (struct taskstats*,struct task_struct*) ;

__attribute__((used)) static void fill_stats(struct user_namespace *user_ns,
         struct pid_namespace *pid_ns,
         struct task_struct *tsk, struct taskstats *stats)
{
 memset(stats, 0, sizeof(*stats));







 delayacct_add_tsk(stats, tsk);


 stats->version = TASKSTATS_VERSION;
 stats->nvcsw = tsk->nvcsw;
 stats->nivcsw = tsk->nivcsw;
 bacct_add_tsk(user_ns, pid_ns, stats, tsk);


 xacct_add_tsk(stats, tsk);
}
