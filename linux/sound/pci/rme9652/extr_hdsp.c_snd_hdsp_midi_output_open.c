
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct hdsp_midi {int lock; struct snd_rawmidi_substream* output; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_midi_output_open(struct snd_rawmidi_substream *substream)
{
 struct hdsp_midi *hmidi;

 hmidi = (struct hdsp_midi *) substream->rmidi->private_data;
 spin_lock_irq (&hmidi->lock);
 hmidi->output = substream;
 spin_unlock_irq (&hmidi->lock);

 return 0;
}
