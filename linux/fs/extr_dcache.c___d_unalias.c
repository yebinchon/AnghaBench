
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rw_semaphore {int dummy; } ;
struct mutex {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_2__* d_parent; TYPE_1__* d_sb; } ;
struct TYPE_6__ {struct rw_semaphore i_rwsem; } ;
struct TYPE_5__ {TYPE_3__* d_inode; } ;
struct TYPE_4__ {struct mutex s_vfs_rename_mutex; } ;


 int ESTALE ;
 int __d_move (struct dentry*,struct dentry*,int) ;
 int inode_trylock_shared (TYPE_3__*) ;
 int mutex_trylock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int up_read (struct rw_semaphore*) ;

__attribute__((used)) static int __d_unalias(struct inode *inode,
  struct dentry *dentry, struct dentry *alias)
{
 struct mutex *m1 = ((void*)0);
 struct rw_semaphore *m2 = ((void*)0);
 int ret = -ESTALE;


 if (alias->d_parent == dentry->d_parent)
  goto out_unalias;


 if (!mutex_trylock(&dentry->d_sb->s_vfs_rename_mutex))
  goto out_err;
 m1 = &dentry->d_sb->s_vfs_rename_mutex;
 if (!inode_trylock_shared(alias->d_parent->d_inode))
  goto out_err;
 m2 = &alias->d_parent->d_inode->i_rwsem;
out_unalias:
 __d_move(alias, dentry, 0);
 ret = 0;
out_err:
 if (m2)
  up_read(m2);
 if (m1)
  mutex_unlock(m1);
 return ret;
}
