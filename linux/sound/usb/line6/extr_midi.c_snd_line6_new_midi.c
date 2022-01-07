
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {TYPE_1__* properties; int card; } ;
struct snd_rawmidi {int info_flags; int name; int id; } ;
struct TYPE_2__ {int name; int id; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int line6_midi_input_ops ;
 int line6_midi_output_ops ;
 int snd_rawmidi_new (int ,char*,int ,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_line6_new_midi(struct usb_line6 *line6,
         struct snd_rawmidi **rmidi_ret)
{
 struct snd_rawmidi *rmidi;
 int err;

 err = snd_rawmidi_new(line6->card, "Line 6 MIDI", 0, 1, 1, rmidi_ret);
 if (err < 0)
  return err;

 rmidi = *rmidi_ret;
 strcpy(rmidi->id, line6->properties->id);
 strcpy(rmidi->name, line6->properties->name);

 rmidi->info_flags =
     SNDRV_RAWMIDI_INFO_OUTPUT |
     SNDRV_RAWMIDI_INFO_INPUT | SNDRV_RAWMIDI_INFO_DUPLEX;

 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
       &line6_midi_output_ops);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT,
       &line6_midi_input_ops);
 return 0;
}
