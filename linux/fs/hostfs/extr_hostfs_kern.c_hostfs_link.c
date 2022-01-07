
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int __putname (char*) ;
 char* dentry_name (struct dentry*) ;
 int link_file (char*,char*) ;

__attribute__((used)) static int hostfs_link(struct dentry *to, struct inode *ino,
         struct dentry *from)
{
 char *from_name, *to_name;
 int err;

 if ((from_name = dentry_name(from)) == ((void*)0))
  return -ENOMEM;
 to_name = dentry_name(to);
 if (to_name == ((void*)0)) {
  __putname(from_name);
  return -ENOMEM;
 }
 err = link_file(to_name, from_name);
 __putname(from_name);
 __putname(to_name);
 return err;
}
