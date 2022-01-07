
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int ioctl_lock; } ;
struct file {struct snd_timer_user* private_data; } ;


 long __snd_timer_user_ioctl (struct file*,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long snd_timer_user_ioctl(struct file *file, unsigned int cmd,
     unsigned long arg)
{
 struct snd_timer_user *tu = file->private_data;
 long ret;

 mutex_lock(&tu->ioctl_lock);
 ret = __snd_timer_user_ioctl(file, cmd, arg);
 mutex_unlock(&tu->ioctl_lock);
 return ret;
}
