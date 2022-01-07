
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; int tk_pid; } ;


 int dprintk (char*,int ,int ) ;

__attribute__((used)) static void nlmsvc_callback_exit(struct rpc_task *task, void *data)
{
 dprintk("lockd: %5u callback returned %d\n", task->tk_pid,
   -task->tk_status);
}
