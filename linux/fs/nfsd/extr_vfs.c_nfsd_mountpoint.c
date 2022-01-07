
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_export {int ex_flags; } ;
struct dentry {int dummy; } ;


 int NFSEXP_V4ROOT ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 scalar_t__ nfsd4_is_junction (struct dentry*) ;

int nfsd_mountpoint(struct dentry *dentry, struct svc_export *exp)
{
 if (!d_inode(dentry))
  return 0;
 if (exp->ex_flags & NFSEXP_V4ROOT)
  return 1;
 if (nfsd4_is_junction(dentry))
  return 1;
 if (d_mountpoint(dentry))




  return 2;
 return 0;
}
