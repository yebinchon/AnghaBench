
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* properties; int ifcdev; } ;
struct usb_line6_podhd {TYPE_2__ line6; } ;
struct usb_line6 {int startup_work; int card; int usbdev; int startup; int disconnect; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_3__ {int capabilities; int ctrl_if; } ;


 int ENODEV ;
 int LINE6_CAP_CONTROL ;
 int LINE6_CAP_CONTROL_INFO ;
 int LINE6_CAP_PCM ;
 scalar_t__ LINE6_PODX3 ;
 scalar_t__ LINE6_PODX3LIVE ;
 int PODHD_STARTUP_DELAY ;
 int dev_err (int ,char*,int ,...) ;
 int line6_init_pcm (struct usb_line6*,int *) ;
 struct usb_line6_podhd* line6_to_podhd (struct usb_line6*) ;
 int msecs_to_jiffies (int ) ;
 int podhd_dev_attr_group ;
 int podhd_disconnect ;
 int podhd_driver ;
 int podhd_pcm_properties ;
 int podhd_startup ;
 int podx3_pcm_properties ;
 int schedule_delayed_work (int *,int ) ;
 int snd_card_add_dev_attr (int ,int *) ;
 int snd_card_register (int ) ;
 int usb_driver_claim_interface (int *,struct usb_interface*,int *) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static int podhd_init(struct usb_line6 *line6,
        const struct usb_device_id *id)
{
 int err;
 struct usb_line6_podhd *pod = line6_to_podhd(line6);
 struct usb_interface *intf;

 line6->disconnect = podhd_disconnect;
 line6->startup = podhd_startup;

 if (pod->line6.properties->capabilities & LINE6_CAP_CONTROL) {

  intf = usb_ifnum_to_if(line6->usbdev,
     pod->line6.properties->ctrl_if);
  if (!intf) {
   dev_err(pod->line6.ifcdev, "interface %d not found\n",
    pod->line6.properties->ctrl_if);
   return -ENODEV;
  }

  err = usb_driver_claim_interface(&podhd_driver, intf, ((void*)0));
  if (err != 0) {
   dev_err(pod->line6.ifcdev, "can't claim interface %d, error %d\n",
    pod->line6.properties->ctrl_if, err);
   return err;
  }
 }

 if (pod->line6.properties->capabilities & LINE6_CAP_CONTROL_INFO) {

  err = snd_card_add_dev_attr(line6->card, &podhd_dev_attr_group);
  if (err < 0)
   return err;
 }

 if (pod->line6.properties->capabilities & LINE6_CAP_PCM) {

  err = line6_init_pcm(line6,
   (id->driver_info == LINE6_PODX3 ||
   id->driver_info == LINE6_PODX3LIVE) ? &podx3_pcm_properties :
   &podhd_pcm_properties);
  if (err < 0)
   return err;
 }

 if (!(pod->line6.properties->capabilities & LINE6_CAP_CONTROL_INFO)) {

  return snd_card_register(line6->card);
 }


 schedule_delayed_work(&line6->startup_work,
         msecs_to_jiffies(PODHD_STARTUP_DELAY));
 return 0;
}
