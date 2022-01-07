
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 unsigned int RENAME_EXCHANGE ;
 unsigned int RENAME_NOREPLACE ;
 int __putname (char*) ;
 char* dentry_name (struct dentry*) ;
 int rename2_file (char*,char*,unsigned int) ;
 int rename_file (char*,char*) ;

__attribute__((used)) static int hostfs_rename2(struct inode *old_dir, struct dentry *old_dentry,
     struct inode *new_dir, struct dentry *new_dentry,
     unsigned int flags)
{
 char *old_name, *new_name;
 int err;

 if (flags & ~(RENAME_NOREPLACE | RENAME_EXCHANGE))
  return -EINVAL;

 old_name = dentry_name(old_dentry);
 if (old_name == ((void*)0))
  return -ENOMEM;
 new_name = dentry_name(new_dentry);
 if (new_name == ((void*)0)) {
  __putname(old_name);
  return -ENOMEM;
 }
 if (!flags)
  err = rename_file(old_name, new_name);
 else
  err = rename2_file(old_name, new_name, flags);

 __putname(old_name);
 __putname(new_name);
 return err;
}
