
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* nfs_add_or_obtain (struct dentry*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;

int nfs_instantiate(struct dentry *dentry, struct nfs_fh *fhandle,
    struct nfs_fattr *fattr,
    struct nfs4_label *label)
{
 struct dentry *d;

 d = nfs_add_or_obtain(dentry, fhandle, fattr, label);
 if (IS_ERR(d))
  return PTR_ERR(d);


 dput(d);
 return 0;
}
