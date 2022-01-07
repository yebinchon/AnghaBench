
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct rpc_rqst {TYPE_1__* rq_task; } ;
struct TYPE_2__ {int tk_client; } ;


 struct user_namespace init_user_ns ;
 struct user_namespace* rpc_userns (int ) ;

__attribute__((used)) static struct user_namespace *rpc_rqst_userns(const struct rpc_rqst *rqstp)
{
 if (rqstp->rq_task)
  return rpc_userns(rqstp->rq_task->tk_client);
 return &init_user_ns;
}
