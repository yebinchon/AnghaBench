
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_2__* rmidi; } ;
typedef size_t snd_wavefront_mpu_id ;
struct TYPE_7__ {int* mode; int virtual; int istimer; int timer; } ;
typedef TYPE_3__ snd_wavefront_midi_t ;
typedef int snd_wavefront_card_t ;
struct TYPE_6__ {TYPE_1__* card; int * private_data; } ;
struct TYPE_5__ {scalar_t__ private_data; } ;


 int MPU401_MODE_OUTPUT_TRIGGER ;
 TYPE_3__* get_wavefront_midi (struct snd_rawmidi_substream*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_wavefront_midi_output_timer ;
 int snd_wavefront_midi_output_write (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void snd_wavefront_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 snd_wavefront_midi_t *midi;
 snd_wavefront_mpu_id mpu;

 if (substream == ((void*)0) || substream->rmidi == ((void*)0))
         return;

 if (substream->rmidi->private_data == ((void*)0))
         return;

 mpu = *((snd_wavefront_mpu_id *) substream->rmidi->private_data);

 if ((midi = get_wavefront_midi (substream)) == ((void*)0)) {
  return;
 }

 spin_lock_irqsave (&midi->virtual, flags);
 if (up) {
  if ((midi->mode[mpu] & MPU401_MODE_OUTPUT_TRIGGER) == 0) {
   if (!midi->istimer) {
    timer_setup(&midi->timer,
         snd_wavefront_midi_output_timer,
         0);
    mod_timer(&midi->timer, 1 + jiffies);
   }
   midi->istimer++;
   midi->mode[mpu] |= MPU401_MODE_OUTPUT_TRIGGER;
  }
 } else {
  midi->mode[mpu] &= ~MPU401_MODE_OUTPUT_TRIGGER;
 }
 spin_unlock_irqrestore (&midi->virtual, flags);

 if (up)
  snd_wavefront_midi_output_write((snd_wavefront_card_t *)substream->rmidi->card->private_data);
}
