
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct hdspm_midi {int lock; int * output; } ;
struct TYPE_2__ {struct hdspm_midi* private_data; } ;


 int snd_hdspm_midi_output_trigger (struct snd_rawmidi_substream*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_midi_output_close(struct snd_rawmidi_substream *substream)
{
 struct hdspm_midi *hmidi;

 snd_hdspm_midi_output_trigger (substream, 0);

 hmidi = substream->rmidi->private_data;
 spin_lock_irq (&hmidi->lock);
 hmidi->output = ((void*)0);
 spin_unlock_irq (&hmidi->lock);

 return 0;
}
