
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct svc_fh {int dummy; } ;
struct svc_export {int dummy; } ;
struct TYPE_4__ {struct svc_export* fh_export; struct dentry* fh_dentry; } ;
struct nfsd3_readdirres {TYPE_2__ fh; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int __be32 ;
struct TYPE_3__ {scalar_t__ i_ino; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int fh_compose (struct svc_fh*,struct svc_export*,struct dentry*,TYPE_2__*) ;
 scalar_t__ isdotent (char const*,int) ;
 struct dentry* lookup_one_len_unlocked (char const*,struct dentry*,int) ;
 int nfserr_noent ;

__attribute__((used)) static __be32
compose_entry_fh(struct nfsd3_readdirres *cd, struct svc_fh *fhp,
   const char *name, int namlen, u64 ino)
{
 struct svc_export *exp;
 struct dentry *dparent, *dchild;
 __be32 rv = nfserr_noent;

 dparent = cd->fh.fh_dentry;
 exp = cd->fh.fh_export;

 if (isdotent(name, namlen)) {
  if (namlen == 2) {
   dchild = dget_parent(dparent);

   if (dchild == dparent)
    goto out;
  } else
   dchild = dget(dparent);
 } else
  dchild = lookup_one_len_unlocked(name, dparent, namlen);
 if (IS_ERR(dchild))
  return rv;
 if (d_mountpoint(dchild))
  goto out;
 if (d_really_is_negative(dchild))
  goto out;
 if (dchild->d_inode->i_ino != ino)
  goto out;
 rv = fh_compose(fhp, exp, dchild, &cd->fh);
out:
 dput(dchild);
 return rv;
}
