
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {int info_flags; struct snd_gus_card* private_data; int name; } ;
struct snd_gus_card {struct snd_rawmidi* midi_uart; scalar_t__ interwave; int card; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_gf1_uart_input ;
 int snd_gf1_uart_output ;
 int snd_rawmidi_new (int ,char*,int,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int strcpy (int ,char*) ;

int snd_gf1_rawmidi_new(struct snd_gus_card *gus, int device)
{
 struct snd_rawmidi *rmidi;
 int err;

 if ((err = snd_rawmidi_new(gus->card, "GF1", device, 1, 1, &rmidi)) < 0)
  return err;
 strcpy(rmidi->name, gus->interwave ? "AMD InterWave" : "GF1");
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_gf1_uart_output);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_gf1_uart_input);
 rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT | SNDRV_RAWMIDI_INFO_INPUT | SNDRV_RAWMIDI_INFO_DUPLEX;
 rmidi->private_data = gus;
 gus->midi_uart = rmidi;
 return err;
}
