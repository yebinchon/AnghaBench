
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_flags; } ;
typedef int __be32 ;


 int RQ_AUTHERR ;
 int rpc_auth_ok ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static __be32
svc_get_autherr(struct svc_rqst *rqstp, __be32 *statp)
{
 if (test_and_clear_bit(RQ_AUTHERR, &rqstp->rq_flags))
  return *statp;
 return rpc_auth_ok;
}
