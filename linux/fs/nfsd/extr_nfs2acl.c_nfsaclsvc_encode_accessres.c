
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_accessres* rq_resp; } ;
struct nfsd3_accessres {int access; int stat; int fh; } ;
typedef int __be32 ;


 int htonl (int ) ;
 int * nfs2svc_encode_fattr (struct svc_rqst*,int *,int *,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int nfsaclsvc_encode_accessres(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd3_accessres *resp = rqstp->rq_resp;

 p = nfs2svc_encode_fattr(rqstp, p, &resp->fh, &resp->stat);
 *p++ = htonl(resp->access);
 return xdr_ressize_check(rqstp, p);
}
