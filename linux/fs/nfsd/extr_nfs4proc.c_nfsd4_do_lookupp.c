
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {scalar_t__ fh_dentry; } ;
typedef scalar_t__ __be32 ;


 int NFS4_FHSIZE ;
 scalar_t__ exp_pseudoroot (struct svc_rqst*,struct svc_fh*) ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 scalar_t__ nfsd_lookup (struct svc_rqst*,struct svc_fh*,char*,int,struct svc_fh*) ;
 scalar_t__ nfserr_noent ;

__attribute__((used)) static __be32 nfsd4_do_lookupp(struct svc_rqst *rqstp, struct svc_fh *fh)
{
 struct svc_fh tmp_fh;
 __be32 ret;

 fh_init(&tmp_fh, NFS4_FHSIZE);
 ret = exp_pseudoroot(rqstp, &tmp_fh);
 if (ret)
  return ret;
 if (tmp_fh.fh_dentry == fh->fh_dentry) {
  fh_put(&tmp_fh);
  return nfserr_noent;
 }
 fh_put(&tmp_fh);
 return nfsd_lookup(rqstp, fh, "..", 2, fh);
}
