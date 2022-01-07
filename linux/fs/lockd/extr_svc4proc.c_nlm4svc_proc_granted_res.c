
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_res* rq_argp; } ;
struct nlm_res {int status; int cookie; } ;
typedef int __be32 ;


 int dprintk (char*) ;
 int nlmsvc_grant_reply (int *,int ) ;
 int nlmsvc_ops ;
 int rpc_success ;

__attribute__((used)) static __be32
nlm4svc_proc_granted_res(struct svc_rqst *rqstp)
{
 struct nlm_res *argp = rqstp->rq_argp;

        if (!nlmsvc_ops)
                return rpc_success;

        dprintk("lockd: GRANTED_RES   called\n");

        nlmsvc_grant_reply(&argp->cookie, argp->status);
        return rpc_success;
}
