
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {TYPE_2__* tk_rqstp; } ;
struct TYPE_4__ {TYPE_1__* rq_cred; } ;
struct TYPE_3__ {int cr_flags; } ;


 int RPCAUTH_CRED_UPTODATE ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
unx_refresh(struct rpc_task *task)
{
 set_bit(RPCAUTH_CRED_UPTODATE, &task->tk_rqstp->rq_cred->cr_flags);
 return 0;
}
