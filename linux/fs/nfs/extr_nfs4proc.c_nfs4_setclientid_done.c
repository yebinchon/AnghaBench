
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; TYPE_1__* tk_rqstp; } ;
struct nfs4_setclientid {int sc_cred; } ;
struct TYPE_2__ {int rq_cred; } ;


 int get_rpccred (int ) ;

__attribute__((used)) static void nfs4_setclientid_done(struct rpc_task *task, void *calldata)
{
 struct nfs4_setclientid *sc = calldata;

 if (task->tk_status == 0)
  sc->sc_cred = get_rpccred(task->tk_rqstp->rq_cred);
}
