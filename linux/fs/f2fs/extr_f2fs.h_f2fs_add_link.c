
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_ino; } ;
struct dentry {int d_name; int d_parent; } ;


 int d_inode (int ) ;
 int f2fs_do_add_link (int ,int *,struct inode*,int ,int ) ;

__attribute__((used)) static inline int f2fs_add_link(struct dentry *dentry, struct inode *inode)
{
 return f2fs_do_add_link(d_inode(dentry->d_parent), &dentry->d_name,
    inode, inode->i_ino, inode->i_mode);
}
