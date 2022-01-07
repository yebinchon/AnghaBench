
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __d_obtain_alias (struct inode*,int) ;

struct dentry *d_obtain_alias(struct inode *inode)
{
 return __d_obtain_alias(inode, 1);
}
