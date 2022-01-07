
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct vfsmount* mnt; } ;
struct vfsmount {int f_mode; TYPE_1__ f_path; } ;
struct pid_namespace {int bacct; } ;
struct fs_pin {int dummy; } ;
struct filename {int dummy; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
struct bsd_acct_struct {int lock; int pin; int done; int work; struct pid_namespace* ns; int needcheck; struct vfsmount* file; int count; } ;
struct TYPE_4__ {int i_mode; } ;


 int EACCES ;
 int EIO ;
 int ENOMEM ;
 int FMODE_CAN_WRITE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int O_APPEND ;
 int O_LARGEFILE ;
 int O_WRONLY ;
 int PTR_ERR (struct vfsmount*) ;
 int S_ISREG (int ) ;
 int __mnt_drop_write (struct vfsmount*) ;
 int __mnt_want_write (struct vfsmount*) ;
 int acct_pin_kill ;
 int atomic_long_set (int *,int) ;
 int close_work ;
 int current ;
 TYPE_2__* file_inode (struct vfsmount*) ;
 struct vfsmount* file_open_name (struct filename*,int,int ) ;
 int filp_close (struct vfsmount*,int *) ;
 int init_completion (int *) ;
 int init_fs_pin (int *,int ) ;
 int jiffies ;
 int kfree (struct bsd_acct_struct*) ;
 struct bsd_acct_struct* kzalloc (int,int ) ;
 struct vfsmount* mnt_clone_internal (TYPE_1__*) ;
 int mntput (struct vfsmount*) ;
 int mutex_init (int *) ;
 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 int pin_insert (int *,struct vfsmount*) ;
 int pin_kill (struct fs_pin*) ;
 int rcu_read_lock () ;
 struct pid_namespace* task_active_pid_ns (int ) ;
 struct fs_pin* xchg (int *,int *) ;

__attribute__((used)) static int acct_on(struct filename *pathname)
{
 struct file *file;
 struct vfsmount *mnt, *internal;
 struct pid_namespace *ns = task_active_pid_ns(current);
 struct bsd_acct_struct *acct;
 struct fs_pin *old;
 int err;

 acct = kzalloc(sizeof(struct bsd_acct_struct), GFP_KERNEL);
 if (!acct)
  return -ENOMEM;


 file = file_open_name(pathname, O_WRONLY|O_APPEND|O_LARGEFILE, 0);
 if (IS_ERR(file)) {
  kfree(acct);
  return PTR_ERR(file);
 }

 if (!S_ISREG(file_inode(file)->i_mode)) {
  kfree(acct);
  filp_close(file, ((void*)0));
  return -EACCES;
 }

 if (!(file->f_mode & FMODE_CAN_WRITE)) {
  kfree(acct);
  filp_close(file, ((void*)0));
  return -EIO;
 }
 internal = mnt_clone_internal(&file->f_path);
 if (IS_ERR(internal)) {
  kfree(acct);
  filp_close(file, ((void*)0));
  return PTR_ERR(internal);
 }
 err = __mnt_want_write(internal);
 if (err) {
  mntput(internal);
  kfree(acct);
  filp_close(file, ((void*)0));
  return err;
 }
 mnt = file->f_path.mnt;
 file->f_path.mnt = internal;

 atomic_long_set(&acct->count, 1);
 init_fs_pin(&acct->pin, acct_pin_kill);
 acct->file = file;
 acct->needcheck = jiffies;
 acct->ns = ns;
 mutex_init(&acct->lock);
 INIT_WORK(&acct->work, close_work);
 init_completion(&acct->done);
 mutex_lock_nested(&acct->lock, 1);
 pin_insert(&acct->pin, mnt);

 rcu_read_lock();
 old = xchg(&ns->bacct, &acct->pin);
 mutex_unlock(&acct->lock);
 pin_kill(old);
 __mnt_drop_write(mnt);
 mntput(mnt);
 return 0;
}
