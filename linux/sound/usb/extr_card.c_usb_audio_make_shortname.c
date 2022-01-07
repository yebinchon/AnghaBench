
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct snd_usb_audio_quirk {scalar_t__* product_name; } ;
struct snd_usb_audio {int usb_id; struct snd_card* card; } ;
struct snd_card {int shortname; } ;


 int USB_ID_PRODUCT (int ) ;
 int USB_ID_VENDOR (int ) ;
 int sprintf (int ,char*,int,int) ;
 int strim (int ) ;
 int strlcpy (int ,scalar_t__*,int) ;
 scalar_t__ usb_string (struct usb_device*,int ,int ,int) ;

__attribute__((used)) static void usb_audio_make_shortname(struct usb_device *dev,
         struct snd_usb_audio *chip,
         const struct snd_usb_audio_quirk *quirk)
{
 struct snd_card *card = chip->card;

 if (quirk && quirk->product_name && *quirk->product_name) {
  strlcpy(card->shortname, quirk->product_name,
   sizeof(card->shortname));
  return;
 }


 if (!dev->descriptor.iProduct ||
     usb_string(dev, dev->descriptor.iProduct,
         card->shortname, sizeof(card->shortname)) <= 0) {

  sprintf(card->shortname, "USB Device %#04x:%#04x",
   USB_ID_VENDOR(chip->usb_id),
   USB_ID_PRODUCT(chip->usb_id));
 }

 strim(card->shortname);
}
