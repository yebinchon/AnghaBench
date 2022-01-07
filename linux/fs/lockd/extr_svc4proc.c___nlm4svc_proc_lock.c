
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_args* rq_argp; } ;
struct nlm_res {int status; int cookie; } ;
struct nlm_host {scalar_t__ h_nsmstate; } ;
struct nlm_file {int dummy; } ;
struct nlm_args {scalar_t__ state; int lock; int reclaim; int cookie; int block; } ;
typedef int __be32 ;


 int dprintk (char*,...) ;
 int nlm4svc_retrieve_args (struct svc_rqst*,struct nlm_args*,struct nlm_host**,struct nlm_file**) ;
 int nlm_drop_reply ;
 int nlm_lck_denied_nolocks ;
 int nlm_release_file (struct nlm_file*) ;
 int nlmsvc_lock (struct svc_rqst*,struct nlm_file*,struct nlm_host*,int *,int ,int *,int ) ;
 int nlmsvc_release_host (struct nlm_host*) ;
 int nlmsvc_release_lockowner (int *) ;
 int ntohl (int ) ;
 int rpc_drop_reply ;
 int rpc_success ;

__attribute__((used)) static __be32
__nlm4svc_proc_lock(struct svc_rqst *rqstp, struct nlm_res *resp)
{
 struct nlm_args *argp = rqstp->rq_argp;
 struct nlm_host *host;
 struct nlm_file *file;
 __be32 rc = rpc_success;

 dprintk("lockd: LOCK          called\n");

 resp->cookie = argp->cookie;


 if ((resp->status = nlm4svc_retrieve_args(rqstp, argp, &host, &file)))
  return resp->status == nlm_drop_reply ? rpc_drop_reply :rpc_success;
 resp->status = nlmsvc_lock(rqstp, file, host, &argp->lock,
     argp->block, &argp->cookie,
     argp->reclaim);
 if (resp->status == nlm_drop_reply)
  rc = rpc_drop_reply;
 else
  dprintk("lockd: LOCK         status %d\n", ntohl(resp->status));

 nlmsvc_release_lockowner(&argp->lock);
 nlmsvc_release_host(host);
 nlm_release_file(file);
 return rc;
}
