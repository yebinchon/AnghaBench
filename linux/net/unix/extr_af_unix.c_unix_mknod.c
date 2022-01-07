
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct path {int dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int AT_FDCWD ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int d_inode (int ) ;
 int dget (struct dentry*) ;
 int done_path_create (struct path*,struct dentry*) ;
 struct dentry* kern_path_create (int ,char const*,struct path*,int ) ;
 int mntget (int ) ;
 int security_path_mknod (struct path*,struct dentry*,int ,int ) ;
 int vfs_mknod (int ,struct dentry*,int ,int ) ;

__attribute__((used)) static int unix_mknod(const char *sun_path, umode_t mode, struct path *res)
{
 struct dentry *dentry;
 struct path path;
 int err = 0;




 dentry = kern_path_create(AT_FDCWD, sun_path, &path, 0);
 err = PTR_ERR(dentry);
 if (IS_ERR(dentry))
  return err;




 err = security_path_mknod(&path, dentry, mode, 0);
 if (!err) {
  err = vfs_mknod(d_inode(path.dentry), dentry, mode, 0);
  if (!err) {
   res->mnt = mntget(path.mnt);
   res->dentry = dget(dentry);
  }
 }
 done_path_create(&path, dentry);
 return err;
}
