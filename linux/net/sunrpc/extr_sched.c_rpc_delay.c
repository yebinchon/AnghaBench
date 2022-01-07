
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int __rpc_atrun ;
 int delay_queue ;
 scalar_t__ jiffies ;
 int rpc_sleep_on_timeout (int *,struct rpc_task*,int ,scalar_t__) ;

void rpc_delay(struct rpc_task *task, unsigned long delay)
{
 rpc_sleep_on_timeout(&delay_queue, task, __rpc_atrun, jiffies + delay);
}
