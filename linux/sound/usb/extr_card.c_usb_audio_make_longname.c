
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iManufacturer; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct snd_usb_audio_quirk {scalar_t__* vendor_name; scalar_t__* profile_name; } ;
struct snd_usb_audio {struct snd_card* card; } ;
struct snd_card {char* shortname; scalar_t__* longname; } ;







 int snd_usb_get_speed (struct usb_device*) ;
 int strim (scalar_t__*) ;
 int strlcat (scalar_t__*,char*,int) ;
 int strlcpy (scalar_t__*,scalar_t__*,int) ;
 int usb_make_path (struct usb_device*,scalar_t__*,int) ;
 int usb_string (struct usb_device*,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static void usb_audio_make_longname(struct usb_device *dev,
        struct snd_usb_audio *chip,
        const struct snd_usb_audio_quirk *quirk)
{
 struct snd_card *card = chip->card;
 int len;


 if (quirk && quirk->profile_name && *quirk->profile_name) {
  strlcpy(card->longname, quirk->profile_name,
   sizeof(card->longname));
  return;
 }

 if (quirk && quirk->vendor_name && *quirk->vendor_name) {
  len = strlcpy(card->longname, quirk->vendor_name, sizeof(card->longname));
 } else {

  if (dev->descriptor.iManufacturer)
   len = usb_string(dev, dev->descriptor.iManufacturer,
      card->longname, sizeof(card->longname));
  else
   len = 0;

 }
 if (len > 0) {
  strim(card->longname);
  if (*card->longname)
   strlcat(card->longname, " ", sizeof(card->longname));
 }

 strlcat(card->longname, card->shortname, sizeof(card->longname));

 len = strlcat(card->longname, " at ", sizeof(card->longname));

 if (len < sizeof(card->longname))
  usb_make_path(dev, card->longname + len, sizeof(card->longname) - len);

 switch (snd_usb_get_speed(dev)) {
 case 130:
  strlcat(card->longname, ", low speed", sizeof(card->longname));
  break;
 case 132:
  strlcat(card->longname, ", full speed", sizeof(card->longname));
  break;
 case 131:
  strlcat(card->longname, ", high speed", sizeof(card->longname));
  break;
 case 129:
  strlcat(card->longname, ", super speed", sizeof(card->longname));
  break;
 case 128:
  strlcat(card->longname, ", super speed plus", sizeof(card->longname));
  break;
 default:
  break;
 }
}
