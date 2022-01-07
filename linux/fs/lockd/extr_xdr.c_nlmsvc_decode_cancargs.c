
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct svc_rqst {struct nlm_args* rq_argp; } ;
struct TYPE_3__ {int fl_type; } ;
struct TYPE_4__ {TYPE_1__ fl; } ;
struct nlm_args {TYPE_2__ lock; void* block; int cookie; } ;
typedef int __be32 ;


 int F_WRLCK ;
 int * nlm_decode_cookie (int *,int *) ;
 int * nlm_decode_lock (int *,TYPE_2__*) ;
 void* ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nlmsvc_decode_cancargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nlm_args *argp = rqstp->rq_argp;
 u32 exclusive;

 if (!(p = nlm_decode_cookie(p, &argp->cookie)))
  return 0;
 argp->block = ntohl(*p++);
 exclusive = ntohl(*p++);
 if (!(p = nlm_decode_lock(p, &argp->lock)))
  return 0;
 if (exclusive)
  argp->lock.fl.fl_type = F_WRLCK;
 return xdr_argsize_check(rqstp, p);
}
