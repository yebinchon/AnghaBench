
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdspm {int midiPorts; int midi_tasklet; TYPE_1__* midi; int control_register; scalar_t__ playback_substream; scalar_t__ capture_substream; int irq_count; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned int irq; int pending; int ie; int statusIn; } ;


 unsigned int HDSPM_audioIRQPending ;
 int HDSPM_controlRegister ;
 int HDSPM_interruptConfirmation ;
 unsigned int HDSPM_midi0IRQPending ;
 unsigned int HDSPM_midi1IRQPending ;
 unsigned int HDSPM_midi2IRQPending ;
 unsigned int HDSPM_midi3IRQPending ;
 int HDSPM_statusRegister ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int hdspm_read (struct hdspm*,int ) ;
 int hdspm_write (struct hdspm*,int ,int ) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t snd_hdspm_interrupt(int irq, void *dev_id)
{
 struct hdspm *hdspm = (struct hdspm *) dev_id;
 unsigned int status;
 int i, audio, midi, schedule = 0;


 status = hdspm_read(hdspm, HDSPM_statusRegister);

 audio = status & HDSPM_audioIRQPending;
 midi = status & (HDSPM_midi0IRQPending | HDSPM_midi1IRQPending |
   HDSPM_midi2IRQPending | HDSPM_midi3IRQPending);
 if (!audio && !midi)
  return IRQ_NONE;

 hdspm_write(hdspm, HDSPM_interruptConfirmation, 0);
 hdspm->irq_count++;


 if (audio) {
  if (hdspm->capture_substream)
   snd_pcm_period_elapsed(hdspm->capture_substream);

  if (hdspm->playback_substream)
   snd_pcm_period_elapsed(hdspm->playback_substream);
 }

 if (midi) {
  i = 0;
  while (i < hdspm->midiPorts) {
   if ((hdspm_read(hdspm,
    hdspm->midi[i].statusIn) & 0xff) &&
     (status & hdspm->midi[i].irq)) {



    hdspm->control_register &= ~hdspm->midi[i].ie;
    hdspm_write(hdspm, HDSPM_controlRegister,
      hdspm->control_register);
    hdspm->midi[i].pending = 1;
    schedule = 1;
   }

   i++;
  }

  if (schedule)
   tasklet_hi_schedule(&hdspm->midi_tasklet);
 }

 return IRQ_HANDLED;
}
