
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_commitres* rq_resp; } ;
struct nfsd_net {int dummy; } ;
struct nfsd3_commitres {scalar_t__ status; int fh; } ;
typedef void* __be32 ;


 int SVC_NET (struct svc_rqst*) ;
 void** encode_wcc_data (struct svc_rqst*,void**,int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_copy_boot_verifier (void**,struct nfsd_net*) ;
 int nfsd_net_id ;
 int xdr_ressize_check (struct svc_rqst*,void**) ;

int
nfs3svc_encode_commitres(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd3_commitres *resp = rqstp->rq_resp;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);
 __be32 verf[2];

 p = encode_wcc_data(rqstp, p, &resp->fh);

 if (resp->status == 0) {

  nfsd_copy_boot_verifier(verf, nn);
  *p++ = verf[0];
  *p++ = verf[1];
 }
 return xdr_ressize_check(rqstp, p);
}
