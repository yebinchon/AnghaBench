
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {int info_flags; int private_free; struct emu10k1x_midi* private_data; int name; } ;
struct emu10k1x_midi {struct snd_rawmidi* rmidi; int output_lock; int input_lock; int open_lock; struct emu10k1x* emu; } ;
struct emu10k1x {int card; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_emu10k1x_midi_free ;
 int snd_emu10k1x_midi_input ;
 int snd_emu10k1x_midi_output ;
 int snd_rawmidi_new (int ,char*,int,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int emu10k1x_midi_init(struct emu10k1x *emu,
         struct emu10k1x_midi *midi, int device,
         char *name)
{
 struct snd_rawmidi *rmidi;
 int err;

 if ((err = snd_rawmidi_new(emu->card, name, device, 1, 1, &rmidi)) < 0)
  return err;
 midi->emu = emu;
 spin_lock_init(&midi->open_lock);
 spin_lock_init(&midi->input_lock);
 spin_lock_init(&midi->output_lock);
 strcpy(rmidi->name, name);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_emu10k1x_midi_output);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_emu10k1x_midi_input);
 rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT |
                      SNDRV_RAWMIDI_INFO_INPUT |
                      SNDRV_RAWMIDI_INFO_DUPLEX;
 rmidi->private_data = midi;
 rmidi->private_free = snd_emu10k1x_midi_free;
 midi->rmidi = rmidi;
 return 0;
}
