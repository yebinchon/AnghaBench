
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_midi {int use_lock; } ;


 struct seq_oss_midi** midi_devs ;
 int register_lock ;
 int snd_use_lock_use (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct seq_oss_midi *
get_mdev(int dev)
{
 struct seq_oss_midi *mdev;
 unsigned long flags;

 spin_lock_irqsave(&register_lock, flags);
 mdev = midi_devs[dev];
 if (mdev)
  snd_use_lock_use(&mdev->use_lock);
 spin_unlock_irqrestore(&register_lock, flags);
 return mdev;
}
