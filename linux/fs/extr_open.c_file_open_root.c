
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct vfsmount {int dummy; } ;
struct open_flags {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;


 struct file* ERR_PTR (int) ;
 int build_open_flags (int,int ,struct open_flags*) ;
 struct file* do_file_open_root (struct dentry*,struct vfsmount*,char const*,struct open_flags*) ;

struct file *file_open_root(struct dentry *dentry, struct vfsmount *mnt,
       const char *filename, int flags, umode_t mode)
{
 struct open_flags op;
 int err = build_open_flags(flags, mode, &op);
 if (err)
  return ERR_PTR(err);
 return do_file_open_root(dentry, mnt, filename, &op);
}
