
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {struct nlm_args* rq_argp; } ;
struct TYPE_3__ {int fl_type; } ;
struct TYPE_4__ {TYPE_1__ fl; } ;
struct nlm_args {TYPE_2__ lock; int cookie; } ;
typedef int __be32 ;


 int F_UNLCK ;
 int * nlm_decode_cookie (int *,int *) ;
 int * nlm_decode_lock (int *,TYPE_2__*) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nlmsvc_decode_unlockargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nlm_args *argp = rqstp->rq_argp;

 if (!(p = nlm_decode_cookie(p, &argp->cookie))
  || !(p = nlm_decode_lock(p, &argp->lock)))
  return 0;
 argp->lock.fl.fl_type = F_UNLCK;
 return xdr_argsize_check(rqstp, p);
}
