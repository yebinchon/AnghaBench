
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; } ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device {int dev; } ;
struct snd_usb_audio {int usb_id; int midi_list; int card; struct usb_device* dev; } ;


 int EINVAL ;
 scalar_t__ USB_CLASS_AUDIO ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int USB_ID (int,int) ;
 scalar_t__ USB_SPEED_LOW ;
 scalar_t__ USB_SUBCLASS_AUDIOSTREAMING ;
 scalar_t__ USB_SUBCLASS_MIDISTREAMING ;
 scalar_t__ USB_SUBCLASS_VENDOR_SPEC ;
 int __snd_usbmidi_create (int ,struct usb_interface*,int *,int *,int ) ;
 int dev_dbg (int *,char*,int,int,...) ;
 int dev_err (int *,char*,...) ;
 struct usb_interface_descriptor* get_iface_desc (struct usb_host_interface*) ;
 scalar_t__ snd_usb_get_speed (struct usb_device*) ;
 int snd_usb_parse_audio_interface (struct snd_usb_audio*,int) ;
 int usb_audio_driver ;
 int usb_driver_claim_interface (int *,struct usb_interface*,void*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int) ;
 scalar_t__ usb_interface_claimed (struct usb_interface*) ;
 int usb_set_interface (struct usb_device*,int,int ) ;

__attribute__((used)) static int snd_usb_create_stream(struct snd_usb_audio *chip, int ctrlif, int interface)
{
 struct usb_device *dev = chip->dev;
 struct usb_host_interface *alts;
 struct usb_interface_descriptor *altsd;
 struct usb_interface *iface = usb_ifnum_to_if(dev, interface);

 if (!iface) {
  dev_err(&dev->dev, "%u:%d : does not exist\n",
   ctrlif, interface);
  return -EINVAL;
 }

 alts = &iface->altsetting[0];
 altsd = get_iface_desc(alts);





 if ((chip->usb_id == USB_ID(0x18d1, 0x2d04) ||
      chip->usb_id == USB_ID(0x18d1, 0x2d05)) &&
     interface == 0 &&
     altsd->bInterfaceClass == USB_CLASS_VENDOR_SPEC &&
     altsd->bInterfaceSubClass == USB_SUBCLASS_VENDOR_SPEC) {
  interface = 2;
  iface = usb_ifnum_to_if(dev, interface);
  if (!iface)
   return -EINVAL;
  alts = &iface->altsetting[0];
  altsd = get_iface_desc(alts);
 }

 if (usb_interface_claimed(iface)) {
  dev_dbg(&dev->dev, "%d:%d: skipping, already claimed\n",
   ctrlif, interface);
  return -EINVAL;
 }

 if ((altsd->bInterfaceClass == USB_CLASS_AUDIO ||
      altsd->bInterfaceClass == USB_CLASS_VENDOR_SPEC) &&
     altsd->bInterfaceSubClass == USB_SUBCLASS_MIDISTREAMING) {
  int err = __snd_usbmidi_create(chip->card, iface,
          &chip->midi_list, ((void*)0),
          chip->usb_id);
  if (err < 0) {
   dev_err(&dev->dev,
    "%u:%d: cannot create sequencer device\n",
    ctrlif, interface);
   return -EINVAL;
  }
  usb_driver_claim_interface(&usb_audio_driver, iface, (void *)-1L);

  return 0;
 }

 if ((altsd->bInterfaceClass != USB_CLASS_AUDIO &&
      altsd->bInterfaceClass != USB_CLASS_VENDOR_SPEC) ||
     altsd->bInterfaceSubClass != USB_SUBCLASS_AUDIOSTREAMING) {
  dev_dbg(&dev->dev,
   "%u:%d: skipping non-supported interface %d\n",
   ctrlif, interface, altsd->bInterfaceClass);

  return -EINVAL;
 }

 if (snd_usb_get_speed(dev) == USB_SPEED_LOW) {
  dev_err(&dev->dev, "low speed audio streaming not supported\n");
  return -EINVAL;
 }

 if (! snd_usb_parse_audio_interface(chip, interface)) {
  usb_set_interface(dev, interface, 0);
  usb_driver_claim_interface(&usb_audio_driver, iface, (void *)-1L);
 }

 return 0;
}
