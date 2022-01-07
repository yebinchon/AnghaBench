
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nlm4svc_encode_void(struct svc_rqst *rqstp, __be32 *p)
{
 return xdr_ressize_check(rqstp, p);
}
