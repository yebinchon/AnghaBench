
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct path {int mnt; TYPE_1__* dentry; } ;
struct inode {int i_mode; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int ATTR_CTIME ;
 int ATTR_MODE ;
 int S_IALLUGO ;
 int break_deleg_wait (struct inode**) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int notify_change (TYPE_1__*,struct iattr*,struct inode**) ;
 int security_path_chmod (struct path const*,int) ;

__attribute__((used)) static int chmod_common(const struct path *path, umode_t mode)
{
 struct inode *inode = path->dentry->d_inode;
 struct inode *delegated_inode = ((void*)0);
 struct iattr newattrs;
 int error;

 error = mnt_want_write(path->mnt);
 if (error)
  return error;
retry_deleg:
 inode_lock(inode);
 error = security_path_chmod(path, mode);
 if (error)
  goto out_unlock;
 newattrs.ia_mode = (mode & S_IALLUGO) | (inode->i_mode & ~S_IALLUGO);
 newattrs.ia_valid = ATTR_MODE | ATTR_CTIME;
 error = notify_change(path->dentry, &newattrs, &delegated_inode);
out_unlock:
 inode_unlock(inode);
 if (delegated_inode) {
  error = break_deleg_wait(&delegated_inode);
  if (!error)
   goto retry_deleg;
 }
 mnt_drop_write(path->mnt);
 return error;
}
