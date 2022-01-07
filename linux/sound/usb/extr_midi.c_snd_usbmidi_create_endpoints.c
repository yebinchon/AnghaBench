
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct snd_usb_midi_endpoint_info {int out_cables; int in_cables; } ;
struct snd_usb_midi {TYPE_5__* dev; TYPE_6__* endpoints; } ;
struct TYPE_13__ {TYPE_4__* in; TYPE_2__* out; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_11__ {TYPE_3__* ports; } ;
struct TYPE_10__ {int substream; } ;
struct TYPE_9__ {TYPE_1__* ports; } ;
struct TYPE_8__ {int substream; } ;


 int MIDI_MAX_ENDPOINTS ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int dev_dbg (int *,char*,int,int) ;
 int snd_usbmidi_in_endpoint_create (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*,TYPE_6__*) ;
 int snd_usbmidi_init_substream (struct snd_usb_midi*,int ,int,int *) ;
 int snd_usbmidi_out_endpoint_create (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*,TYPE_6__*) ;

__attribute__((used)) static int snd_usbmidi_create_endpoints(struct snd_usb_midi *umidi,
     struct snd_usb_midi_endpoint_info *endpoints)
{
 int i, j, err;
 int out_ports = 0, in_ports = 0;

 for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i) {
  if (endpoints[i].out_cables) {
   err = snd_usbmidi_out_endpoint_create(umidi,
             &endpoints[i],
             &umidi->endpoints[i]);
   if (err < 0)
    return err;
  }
  if (endpoints[i].in_cables) {
   err = snd_usbmidi_in_endpoint_create(umidi,
            &endpoints[i],
            &umidi->endpoints[i]);
   if (err < 0)
    return err;
  }

  for (j = 0; j < 0x10; ++j) {
   if (endpoints[i].out_cables & (1 << j)) {
    snd_usbmidi_init_substream(umidi,
          SNDRV_RAWMIDI_STREAM_OUTPUT,
          out_ports,
          &umidi->endpoints[i].out->ports[j].substream);
    ++out_ports;
   }
   if (endpoints[i].in_cables & (1 << j)) {
    snd_usbmidi_init_substream(umidi,
          SNDRV_RAWMIDI_STREAM_INPUT,
          in_ports,
          &umidi->endpoints[i].in->ports[j].substream);
    ++in_ports;
   }
  }
 }
 dev_dbg(&umidi->dev->dev, "created %d output and %d input ports\n",
      out_ports, in_ports);
 return 0;
}
