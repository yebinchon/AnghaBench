
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usbnet {struct usb_device* udev; } ;
struct TYPE_10__ {int idProduct; int idVendor; } ;
struct usb_device {TYPE_4__ descriptor; } ;
struct notifier_block {int dummy; } ;
struct TYPE_9__ {TYPE_2__* parent; } ;
struct net_device {int num_tx_queues; int name; int broadcast; int dev_addr; int ifindex; TYPE_3__ dev; } ;
struct cflayer {int name; } ;
struct caif_dev_common {int use_frag; int use_fcs; int use_stx; int * flowctrl; int link_select; } ;
typedef int common ;
struct TYPE_11__ {int func; } ;
struct TYPE_8__ {TYPE_1__* driver; } ;
struct TYPE_7__ {int name; } ;


 int CAIF_LINK_HIGH_BANDW ;
 int CFUSB_MAX_HEADLEN ;
 int ENOMEM ;
 unsigned long NETDEV_REGISTER ;
 unsigned long NETDEV_UNREGISTER ;
 scalar_t__ STE_USB_PID_CAIF ;
 scalar_t__ STE_USB_VID ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int caif_enroll_dev (struct net_device*,struct caif_dev_common*,struct cflayer*,int ,struct cflayer**,int *) ;
 TYPE_5__ caif_usb_type ;
 struct cflayer* cfusbl_create (int ,int ,int ) ;
 int dev_add_pack (TYPE_5__*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memset (struct caif_dev_common*,int ,int) ;
 int module_put (int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int pack_added ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;
 int pr_warn (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int cfusbl_device_notify(struct notifier_block *me, unsigned long what,
    void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct caif_dev_common common;
 struct cflayer *layer, *link_support;
 struct usbnet *usbnet;
 struct usb_device *usbdev;


 if (!(dev->dev.parent && dev->dev.parent->driver &&
       strcmp(dev->dev.parent->driver->name, "cdc_ncm") == 0))
  return 0;

 usbnet = netdev_priv(dev);
 usbdev = usbnet->udev;

 pr_debug("USB CDC NCM device VID:0x%4x PID:0x%4x\n",
  le16_to_cpu(usbdev->descriptor.idVendor),
  le16_to_cpu(usbdev->descriptor.idProduct));


 if (!(le16_to_cpu(usbdev->descriptor.idVendor) == STE_USB_VID &&
  le16_to_cpu(usbdev->descriptor.idProduct) == STE_USB_PID_CAIF))
  return 0;

 if (what == NETDEV_UNREGISTER)
  module_put(THIS_MODULE);

 if (what != NETDEV_REGISTER)
  return 0;

 __module_get(THIS_MODULE);

 memset(&common, 0, sizeof(common));
 common.use_frag = 0;
 common.use_fcs = 0;
 common.use_stx = 0;
 common.link_select = CAIF_LINK_HIGH_BANDW;
 common.flowctrl = ((void*)0);

 link_support = cfusbl_create(dev->ifindex, dev->dev_addr,
     dev->broadcast);

 if (!link_support)
  return -ENOMEM;

 if (dev->num_tx_queues > 1)
  pr_warn("USB device uses more than one tx queue\n");

 caif_enroll_dev(dev, &common, link_support, CFUSB_MAX_HEADLEN,
   &layer, &caif_usb_type.func);
 if (!pack_added)
  dev_add_pack(&caif_usb_type);
 pack_added = 1;

 strlcpy(layer->name, dev->name, sizeof(layer->name));

 return 0;
}
