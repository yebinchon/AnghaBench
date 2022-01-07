
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* d_find_alias (struct inode*) ;
 char* dentry_name (struct dentry*) ;
 int dput (struct dentry*) ;

__attribute__((used)) static char *inode_name(struct inode *ino)
{
 struct dentry *dentry;
 char *name;

 dentry = d_find_alias(ino);
 if (!dentry)
  return ((void*)0);

 name = dentry_name(dentry);

 dput(dentry);

 return name;
}
