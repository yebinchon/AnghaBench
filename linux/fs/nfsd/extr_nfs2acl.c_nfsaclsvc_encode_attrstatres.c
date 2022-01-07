
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_attrstat* rq_resp; } ;
struct nfsd_attrstat {int stat; int fh; } ;
typedef int __be32 ;


 int * nfs2svc_encode_fattr (struct svc_rqst*,int *,int *,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int nfsaclsvc_encode_attrstatres(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd_attrstat *resp = rqstp->rq_resp;

 p = nfs2svc_encode_fattr(rqstp, p, &resp->fh, &resp->stat);
 return xdr_ressize_check(rqstp, p);
}
