
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* unlink ) (struct inode*,struct dentry*) ;} ;


 int BUG_ON (int) ;
 int I_MUTEX_CHILD ;
 int d_delete (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int inode_is_locked (struct inode*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 int stub1 (struct inode*,struct dentry*) ;

__attribute__((used)) static int xattr_unlink(struct inode *dir, struct dentry *dentry)
{
 int error;

 BUG_ON(!inode_is_locked(dir));

 inode_lock_nested(d_inode(dentry), I_MUTEX_CHILD);
 error = dir->i_op->unlink(dir, dentry);
 inode_unlock(d_inode(dentry));

 if (!error)
  d_delete(dentry);
 return error;
}
