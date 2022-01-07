
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct nameidata {int name; } ;
struct file {int dummy; } ;


 int audit_inode (int ,int ,int ) ;
 int path_lookupat (struct nameidata*,unsigned int,struct path*) ;
 int path_put (struct path*) ;
 int vfs_open (struct path*,struct file*) ;

__attribute__((used)) static int do_o_path(struct nameidata *nd, unsigned flags, struct file *file)
{
 struct path path;
 int error = path_lookupat(nd, flags, &path);
 if (!error) {
  audit_inode(nd->name, path.dentry, 0);
  error = vfs_open(&path, file);
  path_put(&path);
 }
 return error;
}
