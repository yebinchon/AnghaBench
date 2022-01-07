
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* mkdir ) (struct inode*,struct dentry*,int ) ;} ;


 int BUG_ON (int) ;
 int inode_is_locked (struct inode*) ;
 int stub1 (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static int xattr_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 BUG_ON(!inode_is_locked(dir));
 return dir->i_op->mkdir(dir, dentry, mode);
}
