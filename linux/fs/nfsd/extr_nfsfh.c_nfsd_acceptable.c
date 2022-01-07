
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; } ;
struct svc_export {int ex_flags; TYPE_1__ ex_path; } ;
struct dentry {int dummy; } ;


 int IS_ROOT (struct dentry*) ;
 int MAY_EXEC ;
 int NFSEXP_NOSUBTREECHECK ;
 int d_inode (struct dentry*) ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dprintk (char*,struct dentry*,struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_permission (int ,int ) ;

__attribute__((used)) static int nfsd_acceptable(void *expv, struct dentry *dentry)
{
 struct svc_export *exp = expv;
 int rv;
 struct dentry *tdentry;
 struct dentry *parent;

 if (exp->ex_flags & NFSEXP_NOSUBTREECHECK)
  return 1;

 tdentry = dget(dentry);
 while (tdentry != exp->ex_path.dentry && !IS_ROOT(tdentry)) {

  int err;
  parent = dget_parent(tdentry);
  err = inode_permission(d_inode(parent), MAY_EXEC);
  if (err < 0) {
   dput(parent);
   break;
  }
  dput(tdentry);
  tdentry = parent;
 }
 if (tdentry != exp->ex_path.dentry)
  dprintk("nfsd_acceptable failed at %p %pd\n", tdentry, tdentry);
 rv = (tdentry == exp->ex_path.dentry);
 dput(tdentry);
 return rv;
}
