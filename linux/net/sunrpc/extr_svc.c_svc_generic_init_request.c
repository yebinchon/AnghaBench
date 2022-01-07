
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_version {size_t vs_nproc; int vs_dispatch; int * vs_count; struct svc_procedure* vs_proc; scalar_t__ vs_need_cong_ctrl; } ;
struct svc_rqst {size_t rq_vers; size_t rq_proc; int rq_resp; int rq_argp; struct svc_procedure const* rq_procinfo; TYPE_1__* rq_xprt; } ;
struct svc_program {size_t pg_nvers; int pg_hivers; int pg_lovers; struct svc_version** pg_vers; } ;
struct TYPE_4__ {int hivers; int lovers; } ;
struct svc_process_info {TYPE_2__ mismatch; int dispatch; } ;
struct svc_procedure {int pc_ressize; int pc_argsize; } ;
typedef int __be32 ;
struct TYPE_3__ {int xpt_flags; } ;


 int XPT_CONG_CTRL ;
 int memset (int ,int ,int ) ;
 int rpc_proc_unavail ;
 int rpc_prog_mismatch ;
 int rpc_success ;
 int test_bit (int ,int *) ;

__be32
svc_generic_init_request(struct svc_rqst *rqstp,
  const struct svc_program *progp,
  struct svc_process_info *ret)
{
 const struct svc_version *versp = ((void*)0);
 const struct svc_procedure *procp = ((void*)0);

 if (rqstp->rq_vers >= progp->pg_nvers )
  goto err_bad_vers;
 versp = progp->pg_vers[rqstp->rq_vers];
 if (!versp)
  goto err_bad_vers;
 if (versp->vs_need_cong_ctrl && rqstp->rq_xprt &&
     !test_bit(XPT_CONG_CTRL, &rqstp->rq_xprt->xpt_flags))
  goto err_bad_vers;

 if (rqstp->rq_proc >= versp->vs_nproc)
  goto err_bad_proc;
 rqstp->rq_procinfo = procp = &versp->vs_proc[rqstp->rq_proc];
 if (!procp)
  goto err_bad_proc;


 memset(rqstp->rq_argp, 0, procp->pc_argsize);
 memset(rqstp->rq_resp, 0, procp->pc_ressize);


 versp->vs_count[rqstp->rq_proc]++;

 ret->dispatch = versp->vs_dispatch;
 return rpc_success;
err_bad_vers:
 ret->mismatch.lovers = progp->pg_lovers;
 ret->mismatch.hivers = progp->pg_hivers;
 return rpc_prog_mismatch;
err_bad_proc:
 return rpc_proc_unavail;
}
