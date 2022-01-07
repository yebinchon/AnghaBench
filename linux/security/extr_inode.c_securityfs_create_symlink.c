
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFLNK ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 struct dentry* securityfs_create_dentry (char const*,int,struct dentry*,char*,int *,struct inode_operations const*) ;

struct dentry *securityfs_create_symlink(const char *name,
      struct dentry *parent,
      const char *target,
      const struct inode_operations *iops)
{
 struct dentry *dent;
 char *link = ((void*)0);

 if (target) {
  link = kstrdup(target, GFP_KERNEL);
  if (!link)
   return ERR_PTR(-ENOMEM);
 }
 dent = securityfs_create_dentry(name, S_IFLNK | 0444, parent,
     link, ((void*)0), iops);
 if (IS_ERR(dent))
  kfree(link);

 return dent;
}
