
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {TYPE_1__* line6midi; } ;
struct TYPE_2__ {scalar_t__ substream_receive; } ;


 int snd_rawmidi_receive (scalar_t__,unsigned char*,int) ;

void line6_midi_receive(struct usb_line6 *line6, unsigned char *data,
   int length)
{
 if (line6->line6midi->substream_receive)
  snd_rawmidi_receive(line6->line6midi->substream_receive,
        data, length);
}
