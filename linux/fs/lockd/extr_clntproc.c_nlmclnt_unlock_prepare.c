
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nlmclnt_operations {int (* nlmclnt_unlock_prepare ) (struct rpc_task*,int ) ;} ;
struct nlm_rqst {int a_callback_data; TYPE_1__* a_host; } ;
struct TYPE_2__ {struct nlmclnt_operations* h_nlmclnt_ops; } ;


 int rpc_call_start (struct rpc_task*) ;
 int stub1 (struct rpc_task*,int ) ;

__attribute__((used)) static void nlmclnt_unlock_prepare(struct rpc_task *task, void *data)
{
 struct nlm_rqst *req = data;
 const struct nlmclnt_operations *nlmclnt_ops = req->a_host->h_nlmclnt_ops;
 bool defer_call = 0;

 if (nlmclnt_ops && nlmclnt_ops->nlmclnt_unlock_prepare)
  defer_call = nlmclnt_ops->nlmclnt_unlock_prepare(task, req->a_callback_data);

 if (!defer_call)
  rpc_call_start(task);
}
