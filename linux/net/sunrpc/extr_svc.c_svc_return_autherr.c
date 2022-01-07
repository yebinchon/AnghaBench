
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_flags; } ;
typedef int __be32 ;


 int RQ_AUTHERR ;
 int set_bit (int ,int *) ;

__be32
svc_return_autherr(struct svc_rqst *rqstp, __be32 auth_err)
{
 set_bit(RQ_AUTHERR, &rqstp->rq_flags);
 return auth_err;
}
