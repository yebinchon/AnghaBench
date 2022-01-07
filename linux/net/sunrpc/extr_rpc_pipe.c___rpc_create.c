
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int __rpc_create_common (struct inode*,struct dentry*,int,struct file_operations const*,void*) ;
 int fsnotify_create (struct inode*,struct dentry*) ;

__attribute__((used)) static int __rpc_create(struct inode *dir, struct dentry *dentry,
   umode_t mode,
   const struct file_operations *i_fop,
   void *private)
{
 int err;

 err = __rpc_create_common(dir, dentry, S_IFREG | mode, i_fop, private);
 if (err)
  return err;
 fsnotify_create(dir, dentry);
 return 0;
}
