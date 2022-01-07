
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcov {int lock; } ;
struct file {struct kcov* private_data; } ;


 int kcov_ioctl_locked (struct kcov*,unsigned int,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long kcov_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
{
 struct kcov *kcov;
 int res;

 kcov = filep->private_data;
 spin_lock(&kcov->lock);
 res = kcov_ioctl_locked(kcov, cmd, arg);
 spin_unlock(&kcov->lock);
 return res;
}
