
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {int info_flags; struct ensoniq* private_data; int name; } ;
struct ensoniq {struct snd_rawmidi* rmidi; int card; } ;


 int CHIP_NAME ;
 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_ensoniq_midi_input ;
 int snd_ensoniq_midi_output ;
 int snd_rawmidi_new (int ,char*,int,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_ensoniq_midi(struct ensoniq *ensoniq, int device)
{
 struct snd_rawmidi *rmidi;
 int err;

 if ((err = snd_rawmidi_new(ensoniq->card, "ES1370/1", device, 1, 1, &rmidi)) < 0)
  return err;
 strcpy(rmidi->name, CHIP_NAME);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_ensoniq_midi_output);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_ensoniq_midi_input);
 rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT | SNDRV_RAWMIDI_INFO_INPUT |
  SNDRV_RAWMIDI_INFO_DUPLEX;
 rmidi->private_data = ensoniq;
 ensoniq->rmidi = rmidi;
 return 0;
}
