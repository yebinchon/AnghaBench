
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbmidi_out_port {int state; struct snd_rawmidi_substream* substream; } ;
struct snd_usb_midi {TYPE_3__* endpoints; } ;
struct snd_rawmidi_substream {TYPE_4__* runtime; TYPE_1__* rmidi; } ;
struct TYPE_8__ {struct usbmidi_out_port* private_data; } ;
struct TYPE_7__ {TYPE_2__* out; } ;
struct TYPE_6__ {struct usbmidi_out_port* ports; } ;
struct TYPE_5__ {struct snd_usb_midi* private_data; } ;


 int ENXIO ;
 int MIDI_MAX_ENDPOINTS ;
 int STATE_UNKNOWN ;
 int snd_BUG () ;
 int substream_open (struct snd_rawmidi_substream*,int ,int) ;

__attribute__((used)) static int snd_usbmidi_output_open(struct snd_rawmidi_substream *substream)
{
 struct snd_usb_midi *umidi = substream->rmidi->private_data;
 struct usbmidi_out_port *port = ((void*)0);
 int i, j;

 for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i)
  if (umidi->endpoints[i].out)
   for (j = 0; j < 0x10; ++j)
    if (umidi->endpoints[i].out->ports[j].substream == substream) {
     port = &umidi->endpoints[i].out->ports[j];
     break;
    }
 if (!port) {
  snd_BUG();
  return -ENXIO;
 }

 substream->runtime->private_data = port;
 port->state = STATE_UNKNOWN;
 return substream_open(substream, 0, 1);
}
