
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_midi {int coder; } ;


 int kfree (struct seq_oss_midi*) ;
 int max_midi_devs ;
 struct seq_oss_midi** midi_devs ;
 int register_lock ;
 int snd_midi_event_free (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
snd_seq_oss_midi_clear_all(void)
{
 int i;
 struct seq_oss_midi *mdev;
 unsigned long flags;

 spin_lock_irqsave(&register_lock, flags);
 for (i = 0; i < max_midi_devs; i++) {
  if ((mdev = midi_devs[i]) != ((void*)0)) {
   snd_midi_event_free(mdev->coder);
   kfree(mdev);
   midi_devs[i] = ((void*)0);
  }
 }
 max_midi_devs = 0;
 spin_unlock_irqrestore(&register_lock, flags);
}
