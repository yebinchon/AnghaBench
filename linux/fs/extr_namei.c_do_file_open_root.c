
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct open_flags {int lookup_flags; int intent; } ;
struct TYPE_2__ {struct dentry* dentry; struct vfsmount* mnt; } ;
struct nameidata {TYPE_1__ root; } ;
struct filename {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int ECHILD ;
 int ELOOP ;
 struct file* ERR_CAST (struct filename*) ;
 struct file* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct filename*) ;
 int LOOKUP_OPEN ;
 int LOOKUP_RCU ;
 int LOOKUP_REVAL ;
 int LOOKUP_ROOT ;
 scalar_t__ d_is_symlink (struct dentry*) ;
 struct filename* getname_kernel (char const*) ;
 struct file* path_openat (struct nameidata*,struct open_flags const*,int) ;
 int putname (struct filename*) ;
 int restore_nameidata () ;
 int set_nameidata (struct nameidata*,int,struct filename*) ;
 scalar_t__ unlikely (int) ;

struct file *do_file_open_root(struct dentry *dentry, struct vfsmount *mnt,
  const char *name, const struct open_flags *op)
{
 struct nameidata nd;
 struct file *file;
 struct filename *filename;
 int flags = op->lookup_flags | LOOKUP_ROOT;

 nd.root.mnt = mnt;
 nd.root.dentry = dentry;

 if (d_is_symlink(dentry) && op->intent & LOOKUP_OPEN)
  return ERR_PTR(-ELOOP);

 filename = getname_kernel(name);
 if (IS_ERR(filename))
  return ERR_CAST(filename);

 set_nameidata(&nd, -1, filename);
 file = path_openat(&nd, op, flags | LOOKUP_RCU);
 if (unlikely(file == ERR_PTR(-ECHILD)))
  file = path_openat(&nd, op, flags);
 if (unlikely(file == ERR_PTR(-ESTALE)))
  file = path_openat(&nd, op, flags | LOOKUP_REVAL);
 restore_nameidata();
 putname(filename);
 return file;
}
