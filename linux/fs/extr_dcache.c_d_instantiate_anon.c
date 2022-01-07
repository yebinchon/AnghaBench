
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __d_instantiate_anon (struct dentry*,struct inode*,int) ;

struct dentry *d_instantiate_anon(struct dentry *dentry, struct inode *inode)
{
 return __d_instantiate_anon(dentry, inode, 1);
}
