
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_garb_retry; int tk_cred_retry; int tk_rebind_retry; int tk_start; } ;


 int ktime_get () ;

__attribute__((used)) static void
rpc_init_task_statistics(struct rpc_task *task)
{

 task->tk_garb_retry = 2;
 task->tk_cred_retry = 2;
 task->tk_rebind_retry = 2;


 task->tk_start = ktime_get();
}
