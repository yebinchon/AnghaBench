
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct urb {unsigned char* transfer_buffer; int actual_length; int status; struct snd_usb_caiaqdev* context; TYPE_1__* dev; } ;
struct TYPE_7__ {scalar_t__ actual_length; } ;
struct TYPE_6__ {int usb_id; } ;
struct TYPE_8__ {int data_alignment; int num_midi_out; int num_midi_in; int num_analog_audio_out; int num_analog_audio_in; int fw_version; } ;
struct snd_usb_caiaqdev {unsigned char audio_parm_answer; TYPE_3__ ep1_in_urb; int ep1_wait_queue; TYPE_4__* control_state; TYPE_2__ chip; int spec_received; TYPE_4__ spec; } ;
struct device {int dummy; } ;
struct caiaq_device_spec {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;
 int GFP_ATOMIC ;
 int USB_ID (int ,int ) ;
 int USB_PID_AUDIO8DJ ;
 int USB_VID_NATIVEINSTRUMENTS ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (TYPE_4__*,unsigned char*,int) ;
 int snd_usb_caiaq_input_dispatch (struct snd_usb_caiaqdev*,unsigned char*,int) ;
 int snd_usb_caiaq_midi_handle_input (struct snd_usb_caiaqdev*,unsigned char,unsigned char*,unsigned char) ;
 int usb_submit_urb (TYPE_3__*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void usb_ep1_command_reply_dispatch (struct urb* urb)
{
 int ret;
 struct device *dev = &urb->dev->dev;
 struct snd_usb_caiaqdev *cdev = urb->context;
 unsigned char *buf = urb->transfer_buffer;

 if (urb->status || !cdev) {
  dev_warn(dev, "received EP1 urb->status = %i\n", urb->status);
  return;
 }

 switch(buf[0]) {
 case 132:
   memcpy(&cdev->spec, buf+1, sizeof(struct caiaq_device_spec));
  cdev->spec.fw_version = le16_to_cpu(cdev->spec.fw_version);
  dev_dbg(dev, "device spec (firmware %d): audio: %d in, %d out, "
   "MIDI: %d in, %d out, data alignment %d\n",
   cdev->spec.fw_version,
   cdev->spec.num_analog_audio_in,
   cdev->spec.num_analog_audio_out,
   cdev->spec.num_midi_in,
   cdev->spec.num_midi_out,
   cdev->spec.data_alignment);

  cdev->spec_received++;
  wake_up(&cdev->ep1_wait_queue);
  break;
 case 133:
  cdev->audio_parm_answer = buf[1];
  wake_up(&cdev->ep1_wait_queue);
  break;
 case 131:
  snd_usb_caiaq_midi_handle_input(cdev, buf[1], buf + 3, buf[2]);
  break;
 case 128:
  if (cdev->chip.usb_id ==
   USB_ID(USB_VID_NATIVEINSTRUMENTS, USB_PID_AUDIO8DJ)) {
   if (urb->actual_length > sizeof(cdev->control_state))
    urb->actual_length = sizeof(cdev->control_state);
   memcpy(cdev->control_state, buf + 1, urb->actual_length);
   wake_up(&cdev->ep1_wait_queue);
   break;
  }






  break;
 }

 cdev->ep1_in_urb.actual_length = 0;
 ret = usb_submit_urb(&cdev->ep1_in_urb, GFP_ATOMIC);
 if (ret < 0)
  dev_err(dev, "unable to submit urb. OOM!?\n");
}
