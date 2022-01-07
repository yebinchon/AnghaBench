
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int dev_lock_count; int lock; } ;
struct snd_hwdep {struct snd_oxfw* private_data; } ;
struct file {int dummy; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hwdep_release(struct snd_hwdep *hwdep, struct file *file)
{
 struct snd_oxfw *oxfw = hwdep->private_data;

 spin_lock_irq(&oxfw->lock);
 if (oxfw->dev_lock_count == -1)
  oxfw->dev_lock_count = 0;
 spin_unlock_irq(&oxfw->lock);

 return 0;
}
