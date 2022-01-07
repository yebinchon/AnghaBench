
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_res* rq_resp; struct nlm_args* rq_argp; } ;
struct nlm_res {scalar_t__ status; int cookie; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
struct nlm_args {int lock; int reclaim; int cookie; } ;
typedef int __be32 ;


 int SVC_NET (struct svc_rqst*) ;
 int dprintk (char*,...) ;
 scalar_t__ locks_in_grace (int ) ;
 scalar_t__ nlm4svc_retrieve_args (struct svc_rqst*,struct nlm_args*,struct nlm_host**,struct nlm_file**) ;
 scalar_t__ nlm_drop_reply ;
 scalar_t__ nlm_lck_denied_grace_period ;
 int nlm_release_file (struct nlm_file*) ;
 int nlmsvc_release_host (struct nlm_host*) ;
 int nlmsvc_release_lockowner (int *) ;
 scalar_t__ nlmsvc_share_file (struct nlm_host*,struct nlm_file*,struct nlm_args*) ;
 int ntohl (scalar_t__) ;
 int rpc_drop_reply ;
 int rpc_success ;

__attribute__((used)) static __be32
nlm4svc_proc_share(struct svc_rqst *rqstp)
{
 struct nlm_args *argp = rqstp->rq_argp;
 struct nlm_res *resp = rqstp->rq_resp;
 struct nlm_host *host;
 struct nlm_file *file;

 dprintk("lockd: SHARE         called\n");

 resp->cookie = argp->cookie;


 if (locks_in_grace(SVC_NET(rqstp)) && !argp->reclaim) {
  resp->status = nlm_lck_denied_grace_period;
  return rpc_success;
 }


 if ((resp->status = nlm4svc_retrieve_args(rqstp, argp, &host, &file)))
  return resp->status == nlm_drop_reply ? rpc_drop_reply :rpc_success;


 resp->status = nlmsvc_share_file(host, file, argp);

 dprintk("lockd: SHARE         status %d\n", ntohl(resp->status));
 nlmsvc_release_lockowner(&argp->lock);
 nlmsvc_release_host(host);
 nlm_release_file(file);
 return rpc_success;
}
