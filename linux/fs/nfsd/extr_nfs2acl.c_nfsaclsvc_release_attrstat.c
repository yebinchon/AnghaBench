
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_attrstat* rq_resp; } ;
struct nfsd_attrstat {int fh; } ;


 int fh_put (int *) ;

__attribute__((used)) static void nfsaclsvc_release_attrstat(struct svc_rqst *rqstp)
{
 struct nfsd_attrstat *resp = rqstp->rq_resp;

 fh_put(&resp->fh);
}
