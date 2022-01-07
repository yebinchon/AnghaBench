
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_timeout; } ;


 unsigned long READ_ONCE (int ) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

unsigned long
rpc_task_timeout(const struct rpc_task *task)
{
 unsigned long timeout = READ_ONCE(task->tk_timeout);

 if (timeout != 0) {
  unsigned long now = jiffies;
  if (time_before(now, timeout))
   return timeout - now;
 }
 return 0;
}
