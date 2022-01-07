
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* properties; } ;
struct usb_line6_pod {int monitor_level; TYPE_2__ line6; } ;
struct usb_line6 {int startup_work; int line6pcm; int card; int startup; int process_message; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int capabilities; } ;


 int LINE6_CAP_CONTROL ;
 int POD_STARTUP_DELAY ;
 int POD_SYSTEM_INVALID ;
 int line6_init_midi (struct usb_line6*) ;
 int line6_init_pcm (struct usb_line6*,int *) ;
 int line6_pod_process_message ;
 struct usb_line6_pod* line6_to_pod (struct usb_line6*) ;
 int msecs_to_jiffies (int ) ;
 int pod_control_monitor ;
 int pod_dev_attr_group ;
 int pod_pcm_properties ;
 int pod_startup ;
 int schedule_delayed_work (int *,int ) ;
 int snd_card_add_dev_attr (int ,int *) ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,int ) ;

__attribute__((used)) static int pod_init(struct usb_line6 *line6,
      const struct usb_device_id *id)
{
 int err;
 struct usb_line6_pod *pod = line6_to_pod(line6);

 line6->process_message = line6_pod_process_message;
 line6->startup = pod_startup;


 err = snd_card_add_dev_attr(line6->card, &pod_dev_attr_group);
 if (err < 0)
  return err;


 err = line6_init_midi(line6);
 if (err < 0)
  return err;


 err = line6_init_pcm(line6, &pod_pcm_properties);
 if (err < 0)
  return err;


 err = snd_ctl_add(line6->card,
     snd_ctl_new1(&pod_control_monitor, line6->line6pcm));
 if (err < 0)
  return err;







 if (pod->line6.properties->capabilities & LINE6_CAP_CONTROL) {
  pod->monitor_level = POD_SYSTEM_INVALID;


  schedule_delayed_work(&line6->startup_work,
          msecs_to_jiffies(POD_STARTUP_DELAY));
 }

 return 0;
}
