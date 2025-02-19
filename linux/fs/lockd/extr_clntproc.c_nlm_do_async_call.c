
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpc_task {int dummy; } ;
struct rpc_message {int dummy; } ;
struct rpc_call_ops {int dummy; } ;
struct nlm_rqst {int dummy; } ;


 scalar_t__ IS_ERR (struct rpc_task*) ;
 int PTR_ERR (struct rpc_task*) ;
 struct rpc_task* __nlm_async_call (struct nlm_rqst*,int ,struct rpc_message*,struct rpc_call_ops const*) ;
 int rpc_put_task (struct rpc_task*) ;

__attribute__((used)) static int nlm_do_async_call(struct nlm_rqst *req, u32 proc, struct rpc_message *msg, const struct rpc_call_ops *tk_ops)
{
 struct rpc_task *task;

 task = __nlm_async_call(req, proc, msg, tk_ops);
 if (IS_ERR(task))
  return PTR_ERR(task);
 rpc_put_task(task);
 return 0;
}
