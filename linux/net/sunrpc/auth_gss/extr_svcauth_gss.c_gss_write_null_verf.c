
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* head; } ;
struct svc_rqst {TYPE_1__ rq_res; } ;
typedef int __be32 ;
struct TYPE_4__ {int iov_len; int * iov_base; } ;


 int RPC_AUTH_NULL ;
 int svc_putnl (TYPE_2__*,int ) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int
gss_write_null_verf(struct svc_rqst *rqstp)
{
 __be32 *p;

 svc_putnl(rqstp->rq_res.head, RPC_AUTH_NULL);
 p = rqstp->rq_res.head->iov_base + rqstp->rq_res.head->iov_len;

 *p++ = 0;
 if (!xdr_ressize_check(rqstp, p))
  return -1;
 return 0;
}
