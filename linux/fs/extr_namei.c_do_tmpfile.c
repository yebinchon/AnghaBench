
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int mnt; struct dentry* dentry; } ;
struct open_flags {int open_flag; int mode; } ;
struct nameidata {int name; } ;
struct TYPE_2__ {int mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 unsigned int LOOKUP_DIRECTORY ;
 int PTR_ERR (struct dentry*) ;
 int audit_inode (int ,struct dentry*,int ) ;
 int dput (struct dentry*) ;
 int finish_open (struct file*,struct dentry*,int *) ;
 int may_open (struct path*,int ,int ) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int path_lookupat (struct nameidata*,unsigned int,struct path*) ;
 int path_put (struct path*) ;
 scalar_t__ unlikely (int) ;
 struct dentry* vfs_tmpfile (struct dentry*,int ,int ) ;

__attribute__((used)) static int do_tmpfile(struct nameidata *nd, unsigned flags,
  const struct open_flags *op,
  struct file *file)
{
 struct dentry *child;
 struct path path;
 int error = path_lookupat(nd, flags | LOOKUP_DIRECTORY, &path);
 if (unlikely(error))
  return error;
 error = mnt_want_write(path.mnt);
 if (unlikely(error))
  goto out;
 child = vfs_tmpfile(path.dentry, op->mode, op->open_flag);
 error = PTR_ERR(child);
 if (IS_ERR(child))
  goto out2;
 dput(path.dentry);
 path.dentry = child;
 audit_inode(nd->name, child, 0);

 error = may_open(&path, 0, op->open_flag);
 if (error)
  goto out2;
 file->f_path.mnt = path.mnt;
 error = finish_open(file, child, ((void*)0));
out2:
 mnt_drop_write(path.mnt);
out:
 path_put(&path);
 return error;
}
