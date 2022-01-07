
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct svc_export {int ex_path; } ;
struct path {int dummy; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 int exp_put (struct svc_export*) ;
 int nfsd4_encode_path (struct xdr_stream*,int *,struct path const*) ;
 int nfserrno (int ) ;
 struct svc_export* rqst_find_fsidzero_export (struct svc_rqst*) ;

__attribute__((used)) static __be32 nfsd4_encode_fsloc_fsroot(struct xdr_stream *xdr,
   struct svc_rqst *rqstp, const struct path *path)
{
 struct svc_export *exp_ps;
 __be32 res;

 exp_ps = rqst_find_fsidzero_export(rqstp);
 if (IS_ERR(exp_ps))
  return nfserrno(PTR_ERR(exp_ps));
 res = nfsd4_encode_path(xdr, &exp_ps->ex_path, path);
 exp_put(exp_ps);
 return res;
}
