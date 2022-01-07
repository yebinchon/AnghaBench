
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {int * address_strings; int addr; } ;
struct rpc_task {int tk_status; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_add_xprt_test {int data; int (* add_xprt_test ) (struct rpc_clnt*,struct rpc_xprt*,int ) ;} ;


 int EADDRINUSE ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 int PTR_ERR (struct rpc_task*) ;
 size_t RPC_DISPLAY_ADDR ;
 int RPC_TASK_NULLCREDS ;
 int RPC_TASK_SOFT ;
 int RPC_TASK_SOFTCONN ;
 int pr_info (char*,int,int ) ;
 struct rpc_task* rpc_call_null_helper (struct rpc_clnt*,struct rpc_xprt*,int *,int,int *,int *) ;
 int rpc_put_task (struct rpc_task*) ;
 scalar_t__ rpc_xprt_switch_has_addr (struct rpc_xprt_switch*,struct sockaddr*) ;
 int stub1 (struct rpc_clnt*,struct rpc_xprt*,int ) ;
 struct rpc_xprt* xprt_get (struct rpc_xprt*) ;
 int xprt_put (struct rpc_xprt*) ;
 int xprt_switch_get (struct rpc_xprt_switch*) ;
 int xprt_switch_put (struct rpc_xprt_switch*) ;

int rpc_clnt_setup_test_and_add_xprt(struct rpc_clnt *clnt,
         struct rpc_xprt_switch *xps,
         struct rpc_xprt *xprt,
         void *data)
{
 struct rpc_task *task;
 struct rpc_add_xprt_test *xtest = (struct rpc_add_xprt_test *)data;
 int status = -EADDRINUSE;

 xprt = xprt_get(xprt);
 xprt_switch_get(xps);

 if (rpc_xprt_switch_has_addr(xps, (struct sockaddr *)&xprt->addr))
  goto out_err;


 task = rpc_call_null_helper(clnt, xprt, ((void*)0),
        RPC_TASK_SOFT | RPC_TASK_SOFTCONN | RPC_TASK_NULLCREDS,
        ((void*)0), ((void*)0));
 if (IS_ERR(task)) {
  status = PTR_ERR(task);
  goto out_err;
 }
 status = task->tk_status;
 rpc_put_task(task);

 if (status < 0)
  goto out_err;


 xtest->add_xprt_test(clnt, xprt, xtest->data);

 xprt_put(xprt);
 xprt_switch_put(xps);


 return 1;
out_err:
 xprt_put(xprt);
 xprt_switch_put(xps);
 pr_info("RPC:   rpc_clnt_test_xprt failed: %d addr %s not added\n",
  status, xprt->address_strings[RPC_DISPLAY_ADDR]);
 return status;
}
