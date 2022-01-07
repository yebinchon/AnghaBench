
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct path f_path; } ;
struct cred {int dummy; } ;


 struct file* ERR_PTR (int) ;
 int IS_ERR (struct file*) ;
 struct file* alloc_empty_file_noaccount (int,struct cred const*) ;
 int do_dentry_open (struct file*,struct inode*,int *) ;
 int fput (struct file*) ;

struct file *open_with_fake_path(const struct path *path, int flags,
    struct inode *inode, const struct cred *cred)
{
 struct file *f = alloc_empty_file_noaccount(flags, cred);
 if (!IS_ERR(f)) {
  int error;

  f->f_path = *path;
  error = do_dentry_open(f, inode, ((void*)0));
  if (error) {
   fput(f);
   f = ERR_PTR(error);
  }
 }
 return f;
}
