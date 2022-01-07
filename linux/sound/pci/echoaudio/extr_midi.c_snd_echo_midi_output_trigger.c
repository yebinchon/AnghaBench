
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct echoaudio {int tinuse; int timer; int midi_full; int lock; TYPE_2__* card; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct echoaudio* private_data; } ;


 int del_timer_sync (int *) ;
 int dev_dbg (int ,char*,...) ;
 int snd_echo_midi_output_write (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer_setup (int *,int (*) (int *),int ) ;

__attribute__((used)) static void snd_echo_midi_output_trigger(struct snd_rawmidi_substream *substream,
      int up)
{
 struct echoaudio *chip = substream->rmidi->private_data;

 dev_dbg(chip->card->dev, "snd_echo_midi_output_trigger(%d)\n", up);
 spin_lock_irq(&chip->lock);
 if (up) {
  if (!chip->tinuse) {
   timer_setup(&chip->timer, snd_echo_midi_output_write,
        0);
   chip->tinuse = 1;
  }
 } else {
  if (chip->tinuse) {
   chip->tinuse = 0;
   spin_unlock_irq(&chip->lock);
   del_timer_sync(&chip->timer);
   dev_dbg(chip->card->dev, "Timer removed\n");
   return;
  }
 }
 spin_unlock_irq(&chip->lock);

 if (up && !chip->midi_full)
  snd_echo_midi_output_write(&chip->timer);
}
