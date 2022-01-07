
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int ticks; int ioctl_lock; int qchange_sleep; int qlock; } ;
struct inode {int dummy; } ;
struct file {struct snd_timer_user* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 int kfree (struct snd_timer_user*) ;
 struct snd_timer_user* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ realloc_user_queue (struct snd_timer_user*,int) ;
 int spin_lock_init (int *) ;
 int stream_open (struct inode*,struct file*) ;

__attribute__((used)) static int snd_timer_user_open(struct inode *inode, struct file *file)
{
 struct snd_timer_user *tu;
 int err;

 err = stream_open(inode, file);
 if (err < 0)
  return err;

 tu = kzalloc(sizeof(*tu), GFP_KERNEL);
 if (tu == ((void*)0))
  return -ENOMEM;
 spin_lock_init(&tu->qlock);
 init_waitqueue_head(&tu->qchange_sleep);
 mutex_init(&tu->ioctl_lock);
 tu->ticks = 1;
 if (realloc_user_queue(tu, 128) < 0) {
  kfree(tu);
  return -ENOMEM;
 }
 file->private_data = tu;
 return 0;
}
