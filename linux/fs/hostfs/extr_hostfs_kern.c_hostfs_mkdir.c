
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int __putname (char*) ;
 char* dentry_name (struct dentry*) ;
 int do_mkdir (char*,int ) ;

__attribute__((used)) static int hostfs_mkdir(struct inode *ino, struct dentry *dentry, umode_t mode)
{
 char *file;
 int err;

 if ((file = dentry_name(dentry)) == ((void*)0))
  return -ENOMEM;
 err = do_mkdir(file, mode);
 __putname(file);
 return err;
}
