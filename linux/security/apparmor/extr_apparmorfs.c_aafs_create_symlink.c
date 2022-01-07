
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFLNK ;
 struct dentry* aafs_create (char const*,int,struct dentry*,void*,char*,int *,struct inode_operations const*) ;
 int kfree (char*) ;

__attribute__((used)) static struct dentry *aafs_create_symlink(const char *name,
       struct dentry *parent,
       const char *target,
       void *private,
       const struct inode_operations *iops)
{
 struct dentry *dent;
 char *link = ((void*)0);

 if (target) {
  if (!link)
   return ERR_PTR(-ENOMEM);
 }
 dent = aafs_create(name, S_IFLNK | 0444, parent, private, link, ((void*)0),
      iops);
 if (IS_ERR(dent))
  kfree(link);

 return dent;
}
