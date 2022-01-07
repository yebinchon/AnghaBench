
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_midi {struct snd_rawmidi* rmidi; TYPE_1__* card; int next_midi_device; } ;
struct snd_rawmidi {int info_flags; int private_free; struct snd_usb_midi* private_data; int * ops; int name; } ;
struct TYPE_2__ {int shortname; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_rawmidi_new (TYPE_1__*,char*,int ,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int snd_usbmidi_input_ops ;
 int snd_usbmidi_ops ;
 int snd_usbmidi_output_ops ;
 int snd_usbmidi_rawmidi_free ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_usbmidi_create_rawmidi(struct snd_usb_midi *umidi,
          int out_ports, int in_ports)
{
 struct snd_rawmidi *rmidi;
 int err;

 err = snd_rawmidi_new(umidi->card, "USB MIDI",
         umidi->next_midi_device++,
         out_ports, in_ports, &rmidi);
 if (err < 0)
  return err;
 strcpy(rmidi->name, umidi->card->shortname);
 rmidi->info_flags = SNDRV_RAWMIDI_INFO_OUTPUT |
       SNDRV_RAWMIDI_INFO_INPUT |
       SNDRV_RAWMIDI_INFO_DUPLEX;
 rmidi->ops = &snd_usbmidi_ops;
 rmidi->private_data = umidi;
 rmidi->private_free = snd_usbmidi_rawmidi_free;
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
       &snd_usbmidi_output_ops);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT,
       &snd_usbmidi_input_ops);

 umidi->rmidi = rmidi;
 return 0;
}
