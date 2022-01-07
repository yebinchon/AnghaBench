
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_mixer_elem_list {TYPE_1__* mixer; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int dev; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_7__ {int* status; } ;
struct TYPE_8__ {TYPE_2__ iec958; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
typedef int data ;
struct TYPE_10__ {unsigned int bEndpointAddress; } ;
struct TYPE_9__ {int bNumEndpoints; } ;
struct TYPE_6__ {struct snd_usb_audio* chip; } ;


 int EINVAL ;
 int IEC958_AES3_CON_FS_44100 ;
 int IEC958_AES3_CON_FS_48000 ;
 int UAC_EP_CS_ATTR_SAMPLE_RATE ;
 int UAC_GET_CUR ;
 int USB_DIR_IN ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_CLASS ;
 TYPE_5__* get_endpoint (struct usb_host_interface*,int ) ;
 TYPE_4__* get_iface_desc (struct usb_host_interface*) ;
 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int,unsigned int,unsigned char*,int) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 struct usb_interface* usb_ifnum_to_if (int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_microii_spdif_default_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
 struct snd_usb_audio *chip = list->mixer->chip;
 int err;
 struct usb_interface *iface;
 struct usb_host_interface *alts;
 unsigned int ep;
 unsigned char data[3];
 int rate;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;

 ucontrol->value.iec958.status[0] = kcontrol->private_value & 0xff;
 ucontrol->value.iec958.status[1] = (kcontrol->private_value >> 8) & 0xff;
 ucontrol->value.iec958.status[2] = 0x00;


 iface = usb_ifnum_to_if(chip->dev, 1);
 if (!iface || iface->num_altsetting < 2)
  return -EINVAL;
 alts = &iface->altsetting[1];
 if (get_iface_desc(alts)->bNumEndpoints < 1)
  return -EINVAL;
 ep = get_endpoint(alts, 0)->bEndpointAddress;

 err = snd_usb_ctl_msg(chip->dev,
   usb_rcvctrlpipe(chip->dev, 0),
   UAC_GET_CUR,
   USB_TYPE_CLASS | USB_RECIP_ENDPOINT | USB_DIR_IN,
   UAC_EP_CS_ATTR_SAMPLE_RATE << 8,
   ep,
   data,
   sizeof(data));
 if (err < 0)
  goto end;

 rate = data[0] | (data[1] << 8) | (data[2] << 16);
 ucontrol->value.iec958.status[3] = (rate == 48000) ?
   IEC958_AES3_CON_FS_48000 : IEC958_AES3_CON_FS_44100;

 err = 0;
 end:
 snd_usb_unlock_shutdown(chip);
 return err;
}
