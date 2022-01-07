
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_action; scalar_t__ tk_status; } ;


 int call_reserveresult ;
 int dprint_status (struct rpc_task*) ;
 int xprt_reserve (struct rpc_task*) ;

__attribute__((used)) static void
call_reserve(struct rpc_task *task)
{
 dprint_status(task);

 task->tk_status = 0;
 task->tk_action = call_reserveresult;
 xprt_reserve(task);
}
