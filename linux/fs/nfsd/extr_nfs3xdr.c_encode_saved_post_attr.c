
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_post_attr; } ;
typedef int __be32 ;


 int * encode_fattr3 (struct svc_rqst*,int *,struct svc_fh*,int *) ;
 int xdr_one ;

__attribute__((used)) static __be32 *
encode_saved_post_attr(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp)
{

 *p++ = xdr_one;
 return encode_fattr3(rqstp, p, fhp, &fhp->fh_post_attr);
}
