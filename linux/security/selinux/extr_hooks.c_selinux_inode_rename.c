
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int may_rename (struct inode*,struct dentry*,struct inode*,struct dentry*) ;

__attribute__((used)) static int selinux_inode_rename(struct inode *old_inode, struct dentry *old_dentry,
    struct inode *new_inode, struct dentry *new_dentry)
{
 return may_rename(old_inode, old_dentry, new_inode, new_dentry);
}
