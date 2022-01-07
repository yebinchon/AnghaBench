
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_clnt {int cl_tasks; int cl_xprt; TYPE_1__* cl_program; } ;
struct TYPE_4__ {int servername; } ;
struct TYPE_3__ {int name; } ;


 int HZ ;
 int destroy_wait ;
 int dprintk_rcu (char*,int ,int ) ;
 int list_empty (int *) ;
 int might_sleep () ;
 TYPE_2__* rcu_dereference (int ) ;
 int rpc_killall_tasks (struct rpc_clnt*) ;
 int rpc_release_client (struct rpc_clnt*) ;
 int wait_event_timeout (int ,int ,int) ;

void rpc_shutdown_client(struct rpc_clnt *clnt)
{
 might_sleep();

 dprintk_rcu("RPC:       shutting down %s client for %s\n",
   clnt->cl_program->name,
   rcu_dereference(clnt->cl_xprt)->servername);

 while (!list_empty(&clnt->cl_tasks)) {
  rpc_killall_tasks(clnt);
  wait_event_timeout(destroy_wait,
   list_empty(&clnt->cl_tasks), 1*HZ);
 }

 rpc_release_client(clnt);
}
