
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_accessres* rq_resp; } ;
struct nfsd3_accessres {int fh; } ;


 int fh_put (int *) ;

__attribute__((used)) static void nfsaclsvc_release_access(struct svc_rqst *rqstp)
{
 struct nfsd3_accessres *resp = rqstp->rq_resp;

 fh_put(&resp->fh);
}
