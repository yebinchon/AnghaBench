
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct kstat {int dummy; } ;
typedef int __be32 ;


 int * encode_fattr (struct svc_rqst*,int *,struct svc_fh*,struct kstat*) ;

__be32 *nfs2svc_encode_fattr(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp, struct kstat *stat)
{
 return encode_fattr(rqstp, p, fhp, stat);
}
