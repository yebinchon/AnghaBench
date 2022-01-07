
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_export {int ex_flags; } ;
struct TYPE_2__ {struct svc_export* fh_export; struct dentry* fh_dentry; } ;
struct nfsd4_compound_state {int minorversion; TYPE_1__ current_fh; } ;
struct dentry {int dummy; } ;
typedef int __be32 ;


 int FATTR4_WORD0_ACL ;
 int FATTR4_WORD1_MODE ;
 int FATTR4_WORD2_MODE_UMASK ;
 int FATTR4_WORD2_SECURITY_LABEL ;
 int IS_POSIXACL (int ) ;
 int NFSEXP_SECURITY_LABEL ;
 int bmval_is_subset (int*,int*) ;
 int d_inode (struct dentry*) ;
 int nfs_ok ;
 int nfsd_attrs_supported (int ,int*) ;
 int nfserr_attrnotsupp ;
 int nfserr_inval ;

__attribute__((used)) static __be32
check_attr_support(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     u32 *bmval, u32 *writable)
{
 struct dentry *dentry = cstate->current_fh.fh_dentry;
 struct svc_export *exp = cstate->current_fh.fh_export;

 if (!nfsd_attrs_supported(cstate->minorversion, bmval))
  return nfserr_attrnotsupp;
 if ((bmval[0] & FATTR4_WORD0_ACL) && !IS_POSIXACL(d_inode(dentry)))
  return nfserr_attrnotsupp;
 if ((bmval[2] & FATTR4_WORD2_SECURITY_LABEL) &&
   !(exp->ex_flags & NFSEXP_SECURITY_LABEL))
  return nfserr_attrnotsupp;
 if (writable && !bmval_is_subset(bmval, writable))
  return nfserr_inval;
 if (writable && (bmval[2] & FATTR4_WORD2_MODE_UMASK) &&
   (bmval[1] & FATTR4_WORD1_MODE))
  return nfserr_inval;
 return nfs_ok;
}
