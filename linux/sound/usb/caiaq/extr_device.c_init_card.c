
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usbpath ;
struct TYPE_4__ {int iProduct; int iManufacturer; } ;
struct usb_device {TYPE_2__ descriptor; } ;
struct TYPE_3__ {struct snd_card* card; struct usb_device* dev; } ;
struct snd_usb_caiaqdev {char* vendor_name; char* product_name; int ep1_in_urb; int spec_received; int ep1_wait_queue; int prepare_wait_queue; int midi_out_urb; int midi_out_buf; int ep1_in_buf; TYPE_1__ chip; } ;
struct snd_card {char* driver; char* shortname; char* mixername; char* id; int longname; } ;
struct device {int dummy; } ;
typedef int id ;


 int CAIAQ_USB_STR_LEN ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int EP1_BUFSIZE ;
 int EP1_CMD_GET_DEVICE_INFO ;
 int GFP_KERNEL ;
 int HZ ;
 char* MODNAME ;
 struct device* caiaqdev_to_dev (struct snd_usb_caiaqdev*) ;
 int dev_err (struct device*,char*) ;
 int init_waitqueue_head (int *) ;
 int memset (char*,int ,int) ;
 int setup_card (struct snd_usb_caiaqdev*) ;
 int snd_card_set_id (struct snd_card*,char*) ;
 int snd_usb_caiaq_midi_output_done ;
 int snd_usb_caiaq_send_command (struct snd_usb_caiaqdev*,int ,int *,int ) ;
 int snprintf (int ,int,char*,char*,char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int usb_ep1_command_reply_dispatch ;
 int usb_fill_bulk_urb (int *,struct usb_device*,int ,int ,int ,int ,struct snd_usb_caiaqdev*) ;
 int usb_init_urb (int *) ;
 int usb_kill_urb (int *) ;
 int usb_make_path (struct usb_device*,char*,int) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 scalar_t__ usb_set_interface (struct usb_device*,int ,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_string (struct usb_device*,int ,char*,int ) ;
 scalar_t__ usb_submit_urb (int *,int ) ;
 scalar_t__ usb_urb_ep_type_check (int *) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int init_card(struct snd_usb_caiaqdev *cdev)
{
 char *c, usbpath[32];
 struct usb_device *usb_dev = cdev->chip.dev;
 struct snd_card *card = cdev->chip.card;
 struct device *dev = caiaqdev_to_dev(cdev);
 int err, len;

 if (usb_set_interface(usb_dev, 0, 1) != 0) {
  dev_err(dev, "can't set alt interface.\n");
  return -EIO;
 }

 usb_init_urb(&cdev->ep1_in_urb);
 usb_init_urb(&cdev->midi_out_urb);

 usb_fill_bulk_urb(&cdev->ep1_in_urb, usb_dev,
     usb_rcvbulkpipe(usb_dev, 0x1),
     cdev->ep1_in_buf, EP1_BUFSIZE,
     usb_ep1_command_reply_dispatch, cdev);

 usb_fill_bulk_urb(&cdev->midi_out_urb, usb_dev,
     usb_sndbulkpipe(usb_dev, 0x1),
     cdev->midi_out_buf, EP1_BUFSIZE,
     snd_usb_caiaq_midi_output_done, cdev);


 if (usb_urb_ep_type_check(&cdev->ep1_in_urb) ||
     usb_urb_ep_type_check(&cdev->midi_out_urb)) {
  dev_err(dev, "invalid EPs\n");
  return -EINVAL;
 }

 init_waitqueue_head(&cdev->ep1_wait_queue);
 init_waitqueue_head(&cdev->prepare_wait_queue);

 if (usb_submit_urb(&cdev->ep1_in_urb, GFP_KERNEL) != 0)
  return -EIO;

 err = snd_usb_caiaq_send_command(cdev, EP1_CMD_GET_DEVICE_INFO, ((void*)0), 0);
 if (err)
  goto err_kill_urb;

 if (!wait_event_timeout(cdev->ep1_wait_queue, cdev->spec_received, HZ)) {
  err = -ENODEV;
  goto err_kill_urb;
 }

 usb_string(usb_dev, usb_dev->descriptor.iManufacturer,
     cdev->vendor_name, CAIAQ_USB_STR_LEN);

 usb_string(usb_dev, usb_dev->descriptor.iProduct,
     cdev->product_name, CAIAQ_USB_STR_LEN);

 strlcpy(card->driver, MODNAME, sizeof(card->driver));
 strlcpy(card->shortname, cdev->product_name, sizeof(card->shortname));
 strlcpy(card->mixername, cdev->product_name, sizeof(card->mixername));





 if (*card->id == '\0') {
  char id[sizeof(card->id)];

  memset(id, 0, sizeof(id));

  for (c = card->shortname, len = 0;
   *c && len < sizeof(card->id); c++)
   if (*c != ' ')
    id[len++] = *c;

  snd_card_set_id(card, id);
 }

 usb_make_path(usb_dev, usbpath, sizeof(usbpath));
 snprintf(card->longname, sizeof(card->longname), "%s %s (%s)",
         cdev->vendor_name, cdev->product_name, usbpath);

 setup_card(cdev);
 return 0;

 err_kill_urb:
 usb_kill_urb(&cdev->ep1_in_urb);
 return err;
}
