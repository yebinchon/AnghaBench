
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __gfs2_lookup (struct inode*,struct dentry*,int *) ;

__attribute__((used)) static struct dentry *gfs2_lookup(struct inode *dir, struct dentry *dentry,
      unsigned flags)
{
 return __gfs2_lookup(dir, dentry, ((void*)0));
}
