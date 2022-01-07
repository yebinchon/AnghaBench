
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int EPERM ;
 int __putname (char*) ;
 scalar_t__ append ;
 char* dentry_name (struct dentry*) ;
 int unlink_file (char*) ;

__attribute__((used)) static int hostfs_unlink(struct inode *ino, struct dentry *dentry)
{
 char *file;
 int err;

 if (append)
  return -EPERM;

 if ((file = dentry_name(dentry)) == ((void*)0))
  return -ENOMEM;

 err = unlink_file(file);
 __putname(file);
 return err;
}
