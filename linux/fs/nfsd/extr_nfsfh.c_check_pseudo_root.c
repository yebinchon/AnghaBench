
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct svc_export {int ex_flags; TYPE_1__ ex_path; } ;
struct dentry {int dummy; } ;
typedef int __be32 ;


 int NFSEXP_V4ROOT ;
 int d_is_dir (struct dentry*) ;
 int d_is_symlink (struct dentry*) ;
 int nfs_ok ;
 int nfsd_v4client (struct svc_rqst*) ;
 int nfserr_stale ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline __be32 check_pseudo_root(struct svc_rqst *rqstp,
 struct dentry *dentry, struct svc_export *exp)
{
 if (!(exp->ex_flags & NFSEXP_V4ROOT))
  return nfs_ok;






 if (!nfsd_v4client(rqstp))
  return nfserr_stale;




 if (unlikely(!d_is_dir(dentry) &&
       !d_is_symlink(dentry)))
  return nfserr_stale;





 if (unlikely(dentry != exp->ex_path.dentry))
  return nfserr_stale;
 return nfs_ok;
}
