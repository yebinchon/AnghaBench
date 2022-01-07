
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct inode {int * i_cdev; int i_mode; } ;
struct TYPE_5__ {int pid; } ;
struct TYPE_4__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct file {int f_mode; int f_flags; TYPE_2__ f_owner; TYPE_3__* f_op; struct inode* f_inode; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef int fmode_t ;
struct TYPE_6__ {int (* release ) (struct inode*,struct file*) ;int (* fasync ) (int,struct file*,int ) ;} ;


 int FASYNC ;
 int FMODE_NEED_UNMOUNT ;
 int FMODE_OPENED ;
 int FMODE_PATH ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int FMODE_WRITER ;
 scalar_t__ S_ISCHR (int ) ;
 int __mnt_drop_write (struct vfsmount*) ;
 int cdev_put (int *) ;
 int dissolve_on_fput (struct vfsmount*) ;
 int dput (struct dentry*) ;
 int eventpoll_release (struct file*) ;
 int file_free (struct file*) ;
 int fops_put (TYPE_3__*) ;
 int fsnotify_close (struct file*) ;
 int i_readcount_dec (struct inode*) ;
 int ima_file_free (struct file*) ;
 int locks_remove_file (struct file*) ;
 int might_sleep () ;
 int mntput (struct vfsmount*) ;
 int put_pid (int ) ;
 int put_write_access (struct inode*) ;
 int stub1 (int,struct file*,int ) ;
 int stub2 (struct inode*,struct file*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __fput(struct file *file)
{
 struct dentry *dentry = file->f_path.dentry;
 struct vfsmount *mnt = file->f_path.mnt;
 struct inode *inode = file->f_inode;
 fmode_t mode = file->f_mode;

 if (unlikely(!(file->f_mode & FMODE_OPENED)))
  goto out;

 might_sleep();

 fsnotify_close(file);




 eventpoll_release(file);
 locks_remove_file(file);

 ima_file_free(file);
 if (unlikely(file->f_flags & FASYNC)) {
  if (file->f_op->fasync)
   file->f_op->fasync(-1, file, 0);
 }
 if (file->f_op->release)
  file->f_op->release(inode, file);
 if (unlikely(S_ISCHR(inode->i_mode) && inode->i_cdev != ((void*)0) &&
       !(mode & FMODE_PATH))) {
  cdev_put(inode->i_cdev);
 }
 fops_put(file->f_op);
 put_pid(file->f_owner.pid);
 if ((mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ)
  i_readcount_dec(inode);
 if (mode & FMODE_WRITER) {
  put_write_access(inode);
  __mnt_drop_write(mnt);
 }
 dput(dentry);
 if (unlikely(mode & FMODE_NEED_UNMOUNT))
  dissolve_on_fput(mnt);
 mntput(mnt);
out:
 file_free(file);
}
