
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; } ;


 int ETIMEDOUT ;

__attribute__((used)) static void __rpc_atrun(struct rpc_task *task)
{
 if (task->tk_status == -ETIMEDOUT)
  task->tk_status = 0;
}
