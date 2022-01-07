
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int i_flags; } ;
struct TYPE_5__ {int (* rmdir ) (struct inode*,struct dentry*) ;} ;


 int BUG_ON (int) ;
 int I_MUTEX_CHILD ;
 int S_DEAD ;
 int d_delete (struct dentry*) ;
 TYPE_2__* d_inode (struct dentry*) ;
 int inode_is_locked (struct inode*) ;
 int inode_lock_nested (TYPE_2__*,int ) ;
 int inode_unlock (TYPE_2__*) ;
 int stub1 (struct inode*,struct dentry*) ;

__attribute__((used)) static int xattr_rmdir(struct inode *dir, struct dentry *dentry)
{
 int error;

 BUG_ON(!inode_is_locked(dir));

 inode_lock_nested(d_inode(dentry), I_MUTEX_CHILD);
 error = dir->i_op->rmdir(dir, dentry);
 if (!error)
  d_inode(dentry)->i_flags |= S_DEAD;
 inode_unlock(d_inode(dentry));
 if (!error)
  d_delete(dentry);

 return error;
}
