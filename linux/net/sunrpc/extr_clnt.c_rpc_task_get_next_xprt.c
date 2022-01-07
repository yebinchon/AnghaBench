
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct rpc_clnt {int cl_xpi; } ;


 struct rpc_xprt* rpc_task_get_xprt (struct rpc_clnt*,int ) ;
 int xprt_iter_get_next (int *) ;

__attribute__((used)) static struct rpc_xprt *
rpc_task_get_next_xprt(struct rpc_clnt *clnt)
{
 return rpc_task_get_xprt(clnt, xprt_iter_get_next(&clnt->cl_xpi));
}
