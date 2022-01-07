
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_card {int shortname; } ;
struct echoaudio {TYPE_1__* rmidi; } ;
struct TYPE_3__ {int info_flags; struct echoaudio* private_data; int name; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_echo_midi_input ;
 int snd_echo_midi_output ;
 int snd_rawmidi_new (struct snd_card*,int ,int ,int,int,TYPE_1__**) ;
 int snd_rawmidi_set_ops (TYPE_1__*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_echo_midi_create(struct snd_card *card,
    struct echoaudio *chip)
{
 int err;

 if ((err = snd_rawmidi_new(card, card->shortname, 0, 1, 1,
       &chip->rmidi)) < 0)
  return err;

 strcpy(chip->rmidi->name, card->shortname);
 chip->rmidi->private_data = chip;

 snd_rawmidi_set_ops(chip->rmidi, SNDRV_RAWMIDI_STREAM_INPUT,
       &snd_echo_midi_input);
 snd_rawmidi_set_ops(chip->rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
       &snd_echo_midi_output);

 chip->rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT |
  SNDRV_RAWMIDI_INFO_INPUT | SNDRV_RAWMIDI_INFO_DUPLEX;
 return 0;
}
