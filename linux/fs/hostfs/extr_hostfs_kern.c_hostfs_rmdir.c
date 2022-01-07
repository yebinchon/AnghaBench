
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int __putname (char*) ;
 char* dentry_name (struct dentry*) ;
 int hostfs_do_rmdir (char*) ;

__attribute__((used)) static int hostfs_rmdir(struct inode *ino, struct dentry *dentry)
{
 char *file;
 int err;

 if ((file = dentry_name(dentry)) == ((void*)0))
  return -ENOMEM;
 err = hostfs_do_rmdir(file);
 __putname(file);
 return err;
}
