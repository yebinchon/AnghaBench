
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct bcd2000 {scalar_t__ midi_out_active; int midi_out_urb; } ;
struct TYPE_2__ {struct bcd2000* private_data; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static int bcd2000_midi_output_close(struct snd_rawmidi_substream *substream)
{
 struct bcd2000 *bcd2k = substream->rmidi->private_data;

 if (bcd2k->midi_out_active) {
  usb_kill_urb(bcd2k->midi_out_urb);
  bcd2k->midi_out_active = 0;
 }

 return 0;
}
