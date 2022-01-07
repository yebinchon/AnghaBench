
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int dummy; } ;


 int mark_inode_dirty (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;

__attribute__((used)) static int __gfs2_setattr_simple(struct inode *inode, struct iattr *attr)
{
 setattr_copy(inode, attr);
 mark_inode_dirty(inode);
 return 0;
}
