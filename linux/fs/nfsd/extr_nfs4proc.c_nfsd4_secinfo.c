
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_secinfo {struct svc_export* si_exp; int si_namelen; int si_name; } ;
union nfsd4_op_u {struct nfsd4_secinfo secinfo; } ;
struct svc_rqst {int dummy; } ;
struct svc_export {int dummy; } ;
struct nfsd4_compound_state {int current_fh; scalar_t__ minorversion; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ __be32 ;


 int NFSD_MAY_EXEC ;
 int S_IFDIR ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 int dput (struct dentry*) ;
 int exp_put (struct svc_export*) ;
 int fh_put (int *) ;
 int fh_unlock (int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;
 scalar_t__ nfsd_lookup_dentry (struct svc_rqst*,int *,int ,int ,struct svc_export**,struct dentry**) ;
 scalar_t__ nfserr_noent ;

__attribute__((used)) static __be32
nfsd4_secinfo(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
       union nfsd4_op_u *u)
{
 struct nfsd4_secinfo *secinfo = &u->secinfo;
 struct svc_export *exp;
 struct dentry *dentry;
 __be32 err;

 err = fh_verify(rqstp, &cstate->current_fh, S_IFDIR, NFSD_MAY_EXEC);
 if (err)
  return err;
 err = nfsd_lookup_dentry(rqstp, &cstate->current_fh,
        secinfo->si_name, secinfo->si_namelen,
        &exp, &dentry);
 if (err)
  return err;
 fh_unlock(&cstate->current_fh);
 if (d_really_is_negative(dentry)) {
  exp_put(exp);
  err = nfserr_noent;
 } else
  secinfo->si_exp = exp;
 dput(dentry);
 if (cstate->minorversion)

  fh_put(&cstate->current_fh);
 return err;
}
