
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct snd_usb_midi_endpoint_info {int in_cables; int out_cables; } ;
struct snd_usb_midi {unsigned int usb_id; int list; struct usb_interface* iface; TYPE_2__* dev; int * usb_protocol_ops; int error_timer; int mutex; int disc_rwsem; int disc_lock; struct snd_usb_audio_quirk const* quirk; struct snd_card* card; } ;
struct snd_usb_audio_quirk {int type; int data; } ;
struct snd_card {int dummy; } ;
struct list_head {int dummy; } ;
typedef int endpoints ;
struct TYPE_6__ {int idProduct; int idVendor; } ;
struct TYPE_7__ {int dev; TYPE_1__ descriptor; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int MIDI_MAX_ENDPOINTS ;
 unsigned int USB_ID (int,int) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ hweight16 (int ) ;
 int init_rwsem (int *) ;
 TYPE_2__* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct snd_usb_midi*) ;
 struct snd_usb_midi* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (struct snd_usb_midi_endpoint_info*,int ,int) ;
 int memset (struct snd_usb_midi_endpoint_info*,int ,int) ;
 int mutex_init (int *) ;
 int snd_usbmidi_122l_ops ;
 int snd_usbmidi_akai_ops ;
 int snd_usbmidi_ch345_broken_sysex_ops ;
 int snd_usbmidi_cme_ops ;
 int snd_usbmidi_create_endpoints (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ;
 int snd_usbmidi_create_endpoints_midiman (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ;
 int snd_usbmidi_create_rawmidi (struct snd_usb_midi*,int,int) ;
 int snd_usbmidi_detect_endpoints (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*,int) ;
 int snd_usbmidi_detect_per_port_endpoints (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ;
 int snd_usbmidi_detect_roland (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ;
 int snd_usbmidi_detect_yamaha (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ;
 int snd_usbmidi_emagic_ops ;
 int snd_usbmidi_error_timer ;
 int snd_usbmidi_ftdi_ops ;
 int snd_usbmidi_get_ms_info (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ;
 int snd_usbmidi_maudio_broken_running_status_ops ;
 int snd_usbmidi_midiman_ops ;
 int snd_usbmidi_novation_ops ;
 int snd_usbmidi_raw_ops ;
 int snd_usbmidi_standard_ops ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int usb_autopm_get_interface_no_resume (struct usb_interface*) ;
 int usb_control_msg (TYPE_2__*,int ,int,int,int,int ,int *,int ,int) ;
 int usb_set_interface (TYPE_2__*,int ,int ) ;
 int usb_sndctrlpipe (TYPE_2__*,int ) ;

int __snd_usbmidi_create(struct snd_card *card,
    struct usb_interface *iface,
    struct list_head *midi_list,
    const struct snd_usb_audio_quirk *quirk,
    unsigned int usb_id)
{
 struct snd_usb_midi *umidi;
 struct snd_usb_midi_endpoint_info endpoints[MIDI_MAX_ENDPOINTS];
 int out_ports, in_ports;
 int i, err;

 umidi = kzalloc(sizeof(*umidi), GFP_KERNEL);
 if (!umidi)
  return -ENOMEM;
 umidi->dev = interface_to_usbdev(iface);
 umidi->card = card;
 umidi->iface = iface;
 umidi->quirk = quirk;
 umidi->usb_protocol_ops = &snd_usbmidi_standard_ops;
 spin_lock_init(&umidi->disc_lock);
 init_rwsem(&umidi->disc_rwsem);
 mutex_init(&umidi->mutex);
 if (!usb_id)
  usb_id = USB_ID(le16_to_cpu(umidi->dev->descriptor.idVendor),
          le16_to_cpu(umidi->dev->descriptor.idProduct));
 umidi->usb_id = usb_id;
 timer_setup(&umidi->error_timer, snd_usbmidi_error_timer, 0);


 memset(endpoints, 0, sizeof(endpoints));
 switch (quirk ? quirk->type : 130) {
 case 130:
  err = snd_usbmidi_get_ms_info(umidi, endpoints);
  if (umidi->usb_id == USB_ID(0x0763, 0x0150))
   umidi->usb_protocol_ops =
    &snd_usbmidi_maudio_broken_running_status_ops;
  break;
 case 129:
  umidi->usb_protocol_ops = &snd_usbmidi_122l_ops;

 case 136:
  memcpy(&endpoints[0], quirk->data,
         sizeof(struct snd_usb_midi_endpoint_info));
  err = snd_usbmidi_detect_endpoints(umidi, &endpoints[0], 1);
  break;
 case 128:
  err = snd_usbmidi_detect_yamaha(umidi, &endpoints[0]);
  break;
 case 131:
  err = snd_usbmidi_detect_roland(umidi, &endpoints[0]);
  break;
 case 134:
  umidi->usb_protocol_ops = &snd_usbmidi_midiman_ops;
  memcpy(&endpoints[0], quirk->data,
         sizeof(struct snd_usb_midi_endpoint_info));
  err = 0;
  break;
 case 133:
  umidi->usb_protocol_ops = &snd_usbmidi_novation_ops;
  err = snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
  break;
 case 132:
  umidi->usb_protocol_ops = &snd_usbmidi_raw_ops;
  if (umidi->usb_id == USB_ID(0x07fd, 0x0001))
   usb_set_interface(umidi->dev, 0, 0);
  err = snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
  break;
 case 137:
  umidi->usb_protocol_ops = &snd_usbmidi_emagic_ops;
  memcpy(&endpoints[0], quirk->data,
         sizeof(struct snd_usb_midi_endpoint_info));
  err = snd_usbmidi_detect_endpoints(umidi, &endpoints[0], 1);
  break;
 case 138:
  umidi->usb_protocol_ops = &snd_usbmidi_cme_ops;
  err = snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
  break;
 case 140:
  umidi->usb_protocol_ops = &snd_usbmidi_akai_ops;
  err = snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);

  endpoints[1].out_cables = 0;
  break;
 case 135:
  umidi->usb_protocol_ops = &snd_usbmidi_ftdi_ops;


  err = usb_control_msg(umidi->dev, usb_sndctrlpipe(umidi->dev, 0),
          3, 0x40, 0x60, 0, ((void*)0), 0, 1000);
  if (err < 0)
   break;

  err = snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
  break;
 case 139:
  umidi->usb_protocol_ops = &snd_usbmidi_ch345_broken_sysex_ops;
  err = snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
  break;
 default:
  dev_err(&umidi->dev->dev, "invalid quirk type %d\n",
   quirk->type);
  err = -ENXIO;
  break;
 }
 if (err < 0)
  goto free_midi;


 out_ports = 0;
 in_ports = 0;
 for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i) {
  out_ports += hweight16(endpoints[i].out_cables);
  in_ports += hweight16(endpoints[i].in_cables);
 }
 err = snd_usbmidi_create_rawmidi(umidi, out_ports, in_ports);
 if (err < 0)
  goto free_midi;


 if (quirk && quirk->type == 134)
  err = snd_usbmidi_create_endpoints_midiman(umidi, &endpoints[0]);
 else
  err = snd_usbmidi_create_endpoints(umidi, endpoints);
 if (err < 0)
  goto exit;

 usb_autopm_get_interface_no_resume(umidi->iface);

 list_add_tail(&umidi->list, midi_list);
 return 0;

free_midi:
 kfree(umidi);
exit:
 return err;
}
