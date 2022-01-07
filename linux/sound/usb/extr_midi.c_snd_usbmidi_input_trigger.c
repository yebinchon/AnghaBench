
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_midi {int input_triggered; } ;
struct snd_rawmidi_substream {int number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_usb_midi* private_data; } ;


 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void snd_usbmidi_input_trigger(struct snd_rawmidi_substream *substream,
          int up)
{
 struct snd_usb_midi *umidi = substream->rmidi->private_data;

 if (up)
  set_bit(substream->number, &umidi->input_triggered);
 else
  clear_bit(substream->number, &umidi->input_triggered);
}
