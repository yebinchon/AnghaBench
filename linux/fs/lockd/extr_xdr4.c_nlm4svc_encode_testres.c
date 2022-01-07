
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_res* rq_resp; } ;
struct nlm_res {int dummy; } ;
typedef int __be32 ;


 int * nlm4_encode_testres (int *,struct nlm_res*) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nlm4svc_encode_testres(struct svc_rqst *rqstp, __be32 *p)
{
 struct nlm_res *resp = rqstp->rq_resp;

 if (!(p = nlm4_encode_testres(p, resp)))
  return 0;
 return xdr_ressize_check(rqstp, p);
}
