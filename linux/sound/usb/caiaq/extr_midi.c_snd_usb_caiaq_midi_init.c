
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_midi_out; scalar_t__ num_midi_in; } ;
struct TYPE_3__ {int card; } ;
struct snd_usb_caiaqdev {struct snd_rawmidi* rmidi; TYPE_2__ spec; int product_name; TYPE_1__ chip; } ;
struct snd_rawmidi {int info_flags; struct snd_usb_caiaqdev* private_data; int name; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_rawmidi_new (int ,int ,int ,scalar_t__,scalar_t__,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int snd_usb_caiaq_midi_input ;
 int snd_usb_caiaq_midi_output ;
 int strlcpy (int ,int ,int) ;

int snd_usb_caiaq_midi_init(struct snd_usb_caiaqdev *device)
{
 int ret;
 struct snd_rawmidi *rmidi;

 ret = snd_rawmidi_new(device->chip.card, device->product_name, 0,
     device->spec.num_midi_out,
     device->spec.num_midi_in,
     &rmidi);

 if (ret < 0)
  return ret;

 strlcpy(rmidi->name, device->product_name, sizeof(rmidi->name));

 rmidi->info_flags = SNDRV_RAWMIDI_INFO_DUPLEX;
 rmidi->private_data = device;

 if (device->spec.num_midi_out > 0) {
  rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT;
  snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
        &snd_usb_caiaq_midi_output);
 }

 if (device->spec.num_midi_in > 0) {
  rmidi->info_flags |= SNDRV_RAWMIDI_INFO_INPUT;
  snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT,
        &snd_usb_caiaq_midi_input);
 }

 device->rmidi = rmidi;

 return 0;
}
