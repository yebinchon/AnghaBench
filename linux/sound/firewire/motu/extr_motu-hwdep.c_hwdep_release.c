
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int dev_lock_count; int lock; } ;
struct snd_hwdep {struct snd_motu* private_data; } ;
struct file {int dummy; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hwdep_release(struct snd_hwdep *hwdep, struct file *file)
{
 struct snd_motu *motu = hwdep->private_data;

 spin_lock_irq(&motu->lock);
 if (motu->dev_lock_count == -1)
  motu->dev_lock_count = 0;
 spin_unlock_irq(&motu->lock);

 return 0;
}
