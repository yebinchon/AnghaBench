
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {struct snd_dg00x* private_data; } ;
struct snd_dg00x {int dev_lock_count; int lock; } ;
struct file {int dummy; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hwdep_release(struct snd_hwdep *hwdep, struct file *file)
{
 struct snd_dg00x *dg00x = hwdep->private_data;

 spin_lock_irq(&dg00x->lock);
 if (dg00x->dev_lock_count == -1)
  dg00x->dev_lock_count = 0;
 spin_unlock_irq(&dg00x->lock);

 return 0;
}
