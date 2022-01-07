
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {struct snd_line6_midi* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_line6_midi {scalar_t__ num_active_send_urbs; int send_wait; } ;
struct TYPE_2__ {struct usb_line6* line6; } ;


 TYPE_1__* line6_rawmidi_substream_midi (struct snd_rawmidi_substream*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static void line6_midi_output_drain(struct snd_rawmidi_substream *substream)
{
 struct usb_line6 *line6 =
     line6_rawmidi_substream_midi(substream)->line6;
 struct snd_line6_midi *midi = line6->line6midi;

 wait_event_interruptible(midi->send_wait,
     midi->num_active_send_urbs == 0);
}
