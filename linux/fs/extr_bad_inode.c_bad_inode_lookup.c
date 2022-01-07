
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EIO ;
 struct dentry* ERR_PTR (int ) ;

__attribute__((used)) static struct dentry *bad_inode_lookup(struct inode *dir,
   struct dentry *dentry, unsigned int flags)
{
 return ERR_PTR(-EIO);
}
