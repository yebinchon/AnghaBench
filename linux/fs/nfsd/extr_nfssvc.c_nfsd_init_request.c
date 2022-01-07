
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int rq_vers; } ;
struct svc_program {int dummy; } ;
struct TYPE_2__ {int lovers; int hivers; } ;
struct svc_process_info {TYPE_1__ mismatch; } ;
struct nfsd_net {int dummy; } ;
typedef int __be32 ;


 int NFSD_MINVERS ;
 int NFSD_NRVERS ;
 int NFSD_TEST ;
 int SVC_NET (struct svc_rqst*) ;
 scalar_t__ likely (scalar_t__) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 scalar_t__ nfsd_vers (struct nfsd_net*,int,int ) ;
 int rpc_prog_mismatch ;
 int rpc_prog_unavail ;
 int svc_generic_init_request (struct svc_rqst*,struct svc_program const*,struct svc_process_info*) ;

__attribute__((used)) static __be32
nfsd_init_request(struct svc_rqst *rqstp,
    const struct svc_program *progp,
    struct svc_process_info *ret)
{
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);
 int i;

 if (likely(nfsd_vers(nn, rqstp->rq_vers, NFSD_TEST)))
  return svc_generic_init_request(rqstp, progp, ret);

 ret->mismatch.lovers = NFSD_NRVERS;
 for (i = NFSD_MINVERS; i < NFSD_NRVERS; i++) {
  if (nfsd_vers(nn, i, NFSD_TEST)) {
   ret->mismatch.lovers = i;
   break;
  }
 }
 if (ret->mismatch.lovers == NFSD_NRVERS)
  return rpc_prog_unavail;
 ret->mismatch.hivers = NFSD_MINVERS;
 for (i = NFSD_NRVERS - 1; i >= NFSD_MINVERS; i--) {
  if (nfsd_vers(nn, i, NFSD_TEST)) {
   ret->mismatch.hivers = i;
   break;
  }
 }
 return rpc_prog_mismatch;
}
