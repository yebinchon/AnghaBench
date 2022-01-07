
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {int bInterfaceNumber; } ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio_quirk {int dummy; } ;
struct snd_usb_audio {scalar_t__ usb_id; int tx_length_quirk; int dev; } ;


 scalar_t__ USB_ID (int,int) ;
 struct usb_interface_descriptor* get_iface_desc (struct usb_host_interface*) ;
 int snd_usb_parse_audio_interface (struct snd_usb_audio*,int ) ;
 int usb_audio_err (struct snd_usb_audio*,char*,int ,int) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int create_standard_audio_quirk(struct snd_usb_audio *chip,
           struct usb_interface *iface,
           struct usb_driver *driver,
           const struct snd_usb_audio_quirk *quirk)
{
 struct usb_host_interface *alts;
 struct usb_interface_descriptor *altsd;
 int err;

 if (chip->usb_id == USB_ID(0x1686, 0x00dd))
  chip->tx_length_quirk = 1;

 alts = &iface->altsetting[0];
 altsd = get_iface_desc(alts);
 err = snd_usb_parse_audio_interface(chip, altsd->bInterfaceNumber);
 if (err < 0) {
  usb_audio_err(chip, "cannot setup if %d: error %d\n",
      altsd->bInterfaceNumber, err);
  return err;
 }

 usb_set_interface(chip->dev, altsd->bInterfaceNumber, 0);
 return 0;
}
