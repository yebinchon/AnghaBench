
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6 {TYPE_1__* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct TYPE_4__ {struct usb_line6* line6; } ;
struct TYPE_3__ {struct snd_rawmidi_substream* substream_receive; } ;


 TYPE_2__* line6_rawmidi_substream_midi (struct snd_rawmidi_substream*) ;

__attribute__((used)) static void line6_midi_input_trigger(struct snd_rawmidi_substream *substream,
         int up)
{
 struct usb_line6 *line6 =
     line6_rawmidi_substream_midi(substream)->line6;

 if (up)
  line6->line6midi->substream_receive = substream;
 else
  line6->line6midi->substream_receive = ((void*)0);
}
