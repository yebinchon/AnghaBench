
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {scalar_t__ hardware; struct snd_rawmidi* rmidi; int midi_timer; int card; } ;
struct snd_rawmidi {int info_flags; struct snd_sb* private_data; int name; } ;


 scalar_t__ SB_HW_20 ;
 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_rawmidi_new (int ,char*,int,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int snd_sb8dsp_midi_input ;
 int snd_sb8dsp_midi_output ;
 int snd_sb8dsp_midi_output_timer ;
 int strcpy (int ,char*) ;
 int timer_setup (int *,int ,int ) ;

int snd_sb8dsp_midi(struct snd_sb *chip, int device)
{
 struct snd_rawmidi *rmidi;
 int err;

 if ((err = snd_rawmidi_new(chip->card, "SB8 MIDI", device, 1, 1, &rmidi)) < 0)
  return err;
 strcpy(rmidi->name, "SB8 MIDI");
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_sb8dsp_midi_output);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_sb8dsp_midi_input);
 rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT | SNDRV_RAWMIDI_INFO_INPUT;
 if (chip->hardware >= SB_HW_20)
  rmidi->info_flags |= SNDRV_RAWMIDI_INFO_DUPLEX;
 rmidi->private_data = chip;
 timer_setup(&chip->midi_timer, snd_sb8dsp_midi_output_timer, 0);
 chip->rmidi = rmidi;
 return 0;
}
