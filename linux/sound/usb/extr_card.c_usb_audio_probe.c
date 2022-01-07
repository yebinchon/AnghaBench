
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_3__ {int idProduct; int idVendor; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
struct snd_usb_audio_quirk {int ifnum; scalar_t__ shares_media_device; } ;
struct snd_usb_audio {size_t index; int card; int num_interfaces; int active; scalar_t__ txfr_quirk; struct usb_host_interface* ctrl_intf; struct usb_interface* pm_intf; int shutdown; struct usb_device* dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;


 int EIO ;
 int ENODEV ;
 int ENOENT ;
 int ENXIO ;
 int QUIRK_NO_INTERFACE ;
 int SNDRV_CARDS ;
 int USB_ID (int ,int ) ;
 int USB_ID_PRODUCT (int ) ;
 int USB_ID_VENDOR (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int) ;
 int dev_set_drvdata (int *,struct snd_usb_audio*) ;
 scalar_t__* enable ;
 scalar_t__ get_alias_id (struct usb_device*,int *) ;
 struct snd_usb_audio_quirk* get_alias_quirk (struct usb_device*,int ) ;
 TYPE_2__* get_iface_desc (struct usb_host_interface*) ;
 int ignore_ctl_error ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* pid ;
 int register_mutex ;
 int snd_card_free (int ) ;
 int snd_card_register (int ) ;
 int snd_media_device_create (struct snd_usb_audio*,struct usb_interface*) ;
 int snd_usb_apply_boot_quirk (struct usb_device*,struct usb_interface*,struct snd_usb_audio_quirk const*,int ) ;
 int snd_usb_audio_create (struct usb_interface*,struct usb_device*,int,struct snd_usb_audio_quirk const*,int ,struct snd_usb_audio**) ;
 int snd_usb_create_mixer (struct snd_usb_audio*,int,int ) ;
 int snd_usb_create_quirk (struct snd_usb_audio*,struct usb_interface*,int *,struct snd_usb_audio_quirk const*) ;
 int snd_usb_create_streams (struct snd_usb_audio*,int) ;
 int usb_audio_driver ;
 struct snd_usb_audio** usb_chip ;
 int usb_set_intfdata (struct usb_interface*,struct snd_usb_audio*) ;
 int* vid ;

__attribute__((used)) static int usb_audio_probe(struct usb_interface *intf,
      const struct usb_device_id *usb_id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 const struct snd_usb_audio_quirk *quirk =
  (const struct snd_usb_audio_quirk *)usb_id->driver_info;
 struct snd_usb_audio *chip;
 int i, err;
 struct usb_host_interface *alts;
 int ifnum;
 u32 id;

 alts = &intf->altsetting[0];
 ifnum = get_iface_desc(alts)->bInterfaceNumber;
 id = USB_ID(le16_to_cpu(dev->descriptor.idVendor),
      le16_to_cpu(dev->descriptor.idProduct));
 if (get_alias_id(dev, &id))
  quirk = get_alias_quirk(dev, id);
 if (quirk && quirk->ifnum >= 0 && ifnum != quirk->ifnum)
  return -ENXIO;

 err = snd_usb_apply_boot_quirk(dev, intf, quirk, id);
 if (err < 0)
  return err;






 chip = ((void*)0);
 mutex_lock(&register_mutex);
 for (i = 0; i < SNDRV_CARDS; i++) {
  if (usb_chip[i] && usb_chip[i]->dev == dev) {
   if (atomic_read(&usb_chip[i]->shutdown)) {
    dev_err(&dev->dev, "USB device is in the shutdown state, cannot create a card instance\n");
    err = -EIO;
    goto __error;
   }
   chip = usb_chip[i];
   atomic_inc(&chip->active);
   break;
  }
 }
 if (! chip) {



  for (i = 0; i < SNDRV_CARDS; i++)
   if (!usb_chip[i] &&
       (vid[i] == -1 || vid[i] == USB_ID_VENDOR(id)) &&
       (pid[i] == -1 || pid[i] == USB_ID_PRODUCT(id))) {
    if (enable[i]) {
     err = snd_usb_audio_create(intf, dev, i, quirk,
           id, &chip);
     if (err < 0)
      goto __error;
     chip->pm_intf = intf;
     break;
    } else if (vid[i] != -1 || pid[i] != -1) {
     dev_info(&dev->dev,
       "device (%04x:%04x) is disabled\n",
       USB_ID_VENDOR(id),
       USB_ID_PRODUCT(id));
     err = -ENOENT;
     goto __error;
    }
   }
  if (!chip) {
   dev_err(&dev->dev, "no available usb audio device\n");
   err = -ENODEV;
   goto __error;
  }
 }
 dev_set_drvdata(&dev->dev, chip);






 if (!chip->ctrl_intf)
  chip->ctrl_intf = alts;

 chip->txfr_quirk = 0;
 err = 1;
 if (quirk && quirk->ifnum != QUIRK_NO_INTERFACE) {

  err = snd_usb_create_quirk(chip, intf, &usb_audio_driver, quirk);
  if (err < 0)
   goto __error;
 }

 if (err > 0) {

  err = snd_usb_create_streams(chip, ifnum);
  if (err < 0)
   goto __error;
  err = snd_usb_create_mixer(chip, ifnum, ignore_ctl_error);
  if (err < 0)
   goto __error;
 }


 err = snd_card_register(chip->card);
 if (err < 0)
  goto __error;

 if (quirk && quirk->shares_media_device) {

  snd_media_device_create(chip, intf);
 }

 usb_chip[chip->index] = chip;
 chip->num_interfaces++;
 usb_set_intfdata(intf, chip);
 atomic_dec(&chip->active);
 mutex_unlock(&register_mutex);
 return 0;

 __error:
 if (chip) {



  atomic_dec(&chip->active);
  if (!chip->num_interfaces)
   snd_card_free(chip->card);
 }
 mutex_unlock(&register_mutex);
 return err;
}
