
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int mnt; } ;
struct file {int dummy; } ;
struct cred {int dummy; } ;


 int BUG_ON (int) ;
 struct file* ERR_PTR (int) ;
 int IS_ERR (struct file*) ;
 struct file* alloc_empty_file (int,struct cred const*) ;
 int fput (struct file*) ;
 int validate_creds (struct cred const*) ;
 int vfs_open (struct path const*,struct file*) ;

struct file *dentry_open(const struct path *path, int flags,
    const struct cred *cred)
{
 int error;
 struct file *f;

 validate_creds(cred);


 BUG_ON(!path->mnt);

 f = alloc_empty_file(flags, cred);
 if (!IS_ERR(f)) {
  error = vfs_open(path, f);
  if (error) {
   fput(f);
   f = ERR_PTR(error);
  }
 }
 return f;
}
