
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_res* rq_argp; } ;
struct nlm_res {int status; int cookie; } ;
typedef int __be32 ;


 int * nlm_decode_cookie (int *,int *) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nlmsvc_decode_res(struct svc_rqst *rqstp, __be32 *p)
{
 struct nlm_res *resp = rqstp->rq_argp;

 if (!(p = nlm_decode_cookie(p, &resp->cookie)))
  return 0;
 resp->status = *p++;
 return xdr_argsize_check(rqstp, p);
}
