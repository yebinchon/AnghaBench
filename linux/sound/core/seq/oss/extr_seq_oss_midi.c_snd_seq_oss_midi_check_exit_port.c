
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_midi {size_t seq_device; int coder; int use_lock; } ;


 struct seq_oss_midi* find_slot (int,int) ;
 int kfree (struct seq_oss_midi*) ;
 int max_midi_devs ;
 int ** midi_devs ;
 int register_lock ;
 int snd_midi_event_free (int ) ;
 int snd_use_lock_free (int *) ;
 int snd_use_lock_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
snd_seq_oss_midi_check_exit_port(int client, int port)
{
 struct seq_oss_midi *mdev;
 unsigned long flags;
 int index;

 if ((mdev = find_slot(client, port)) != ((void*)0)) {
  spin_lock_irqsave(&register_lock, flags);
  midi_devs[mdev->seq_device] = ((void*)0);
  spin_unlock_irqrestore(&register_lock, flags);
  snd_use_lock_free(&mdev->use_lock);
  snd_use_lock_sync(&mdev->use_lock);
  snd_midi_event_free(mdev->coder);
  kfree(mdev);
 }
 spin_lock_irqsave(&register_lock, flags);
 for (index = max_midi_devs - 1; index >= 0; index--) {
  if (midi_devs[index])
   break;
 }
 max_midi_devs = index + 1;
 spin_unlock_irqrestore(&register_lock, flags);
 return 0;
}
