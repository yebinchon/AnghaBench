
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_args* rq_argp; } ;
struct nlm_lock {int len; int caller; } ;
struct nlm_args {int state; struct nlm_lock lock; } ;
typedef int __be32 ;


 int NLM_MAXSTRLEN ;
 int ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;
 int * xdr_decode_string_inplace (int *,int *,int *,int ) ;

int
nlmsvc_decode_notify(struct svc_rqst *rqstp, __be32 *p)
{
 struct nlm_args *argp = rqstp->rq_argp;
 struct nlm_lock *lock = &argp->lock;

 if (!(p = xdr_decode_string_inplace(p, &lock->caller,
         &lock->len, NLM_MAXSTRLEN)))
  return 0;
 argp->state = ntohl(*p++);
 return xdr_argsize_check(rqstp, p);
}
