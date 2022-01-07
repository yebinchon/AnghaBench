
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_attrstat* rq_resp; } ;
struct nfsd3_attrstat {int fh; } ;


 int fh_put (int *) ;

void
nfs3svc_release_fhandle(struct svc_rqst *rqstp)
{
 struct nfsd3_attrstat *resp = rqstp->rq_resp;

 fh_put(&resp->fh);
}
