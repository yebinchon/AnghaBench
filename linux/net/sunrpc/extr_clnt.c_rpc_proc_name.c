
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct rpc_procinfo* rpc_proc; } ;
struct rpc_task {TYPE_1__ tk_msg; } ;
struct rpc_procinfo {char const* p_name; } ;



const char
*rpc_proc_name(const struct rpc_task *task)
{
 const struct rpc_procinfo *proc = task->tk_msg.rpc_proc;

 if (proc) {
  if (proc->p_name)
   return proc->p_name;
  else
   return "NULL";
 } else
  return "no proc";
}
