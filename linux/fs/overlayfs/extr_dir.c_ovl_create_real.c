
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_cattr {int mode; int link; int rdev; scalar_t__ hardlink; } ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;


 int EIO ;
 int EPERM ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;





 int S_IFMT ;


 scalar_t__ WARN_ON (int) ;
 int dput (struct dentry*) ;
 int ovl_do_create (struct inode*,struct dentry*,int) ;
 int ovl_do_link (scalar_t__,struct inode*,struct dentry*) ;
 int ovl_do_mknod (struct inode*,struct dentry*,int,int ) ;
 int ovl_do_symlink (struct inode*,struct dentry*,int ) ;
 int ovl_mkdir_real (struct inode*,struct dentry**,int) ;

struct dentry *ovl_create_real(struct inode *dir, struct dentry *newdentry,
          struct ovl_cattr *attr)
{
 int err;

 if (IS_ERR(newdentry))
  return newdentry;

 err = -ESTALE;
 if (newdentry->d_inode)
  goto out;

 if (attr->hardlink) {
  err = ovl_do_link(attr->hardlink, dir, newdentry);
 } else {
  switch (attr->mode & S_IFMT) {
  case 129:
   err = ovl_do_create(dir, newdentry, attr->mode);
   break;

  case 132:

   err = ovl_mkdir_real(dir, &newdentry, attr->mode);
   break;

  case 133:
  case 134:
  case 131:
  case 128:
   err = ovl_do_mknod(dir, newdentry, attr->mode,
        attr->rdev);
   break;

  case 130:
   err = ovl_do_symlink(dir, newdentry, attr->link);
   break;

  default:
   err = -EPERM;
  }
 }
 if (!err && WARN_ON(!newdentry->d_inode)) {




  err = -EIO;
 }
out:
 if (err) {
  dput(newdentry);
  return ERR_PTR(err);
 }
 return newdentry;
}
