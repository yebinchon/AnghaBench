
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int mnt; TYPE_1__* dentry; } ;
struct inode {int i_mode; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* d_inode; } ;


 long EINVAL ;
 long EISDIR ;
 long EPERM ;
 scalar_t__ IS_APPEND (struct inode*) ;
 int MAY_WRITE ;
 int O_WRONLY ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 long break_lease (struct inode*,int ) ;
 long do_truncate (TYPE_1__*,int ,int ,int *) ;
 long get_write_access (struct inode*) ;
 long inode_permission (struct inode*,int ) ;
 long locks_verify_truncate (struct inode*,int *,int ) ;
 int mnt_drop_write (int ) ;
 long mnt_want_write (int ) ;
 int put_write_access (struct inode*) ;
 long security_path_truncate (struct path const*) ;

long vfs_truncate(const struct path *path, loff_t length)
{
 struct inode *inode;
 long error;

 inode = path->dentry->d_inode;


 if (S_ISDIR(inode->i_mode))
  return -EISDIR;
 if (!S_ISREG(inode->i_mode))
  return -EINVAL;

 error = mnt_want_write(path->mnt);
 if (error)
  goto out;

 error = inode_permission(inode, MAY_WRITE);
 if (error)
  goto mnt_drop_write_and_out;

 error = -EPERM;
 if (IS_APPEND(inode))
  goto mnt_drop_write_and_out;

 error = get_write_access(inode);
 if (error)
  goto mnt_drop_write_and_out;





 error = break_lease(inode, O_WRONLY);
 if (error)
  goto put_write_and_out;

 error = locks_verify_truncate(inode, ((void*)0), length);
 if (!error)
  error = security_path_truncate(path);
 if (!error)
  error = do_truncate(path->dentry, length, 0, ((void*)0));

put_write_and_out:
 put_write_access(inode);
mnt_drop_write_and_out:
 mnt_drop_write(path->mnt);
out:
 return error;
}
