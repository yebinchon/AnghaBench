
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; struct snd_usb_caiaq_cb_info* context; scalar_t__ status; } ;
struct snd_usb_caiaqdev {int outurb_active_mask; int sub_capture; int sub_playback; int spinlock; struct urb** data_urbs_out; int streaming; } ;
struct snd_usb_caiaq_cb_info {int index; struct snd_usb_caiaqdev* cdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int actual_length; int length; size_t offset; scalar_t__ status; } ;


 int BYTES_PER_FRAME ;
 int FRAMES_PER_URB ;
 int GFP_ATOMIC ;
 int N_URBS ;
 struct device* caiaqdev_to_dev (struct snd_usb_caiaqdev*) ;
 int check_for_elapsed_periods (struct snd_usb_caiaqdev*,int ) ;
 int clear_bit (int ,int *) ;
 int dev_err (struct device*,char*) ;
 int fill_out_urb (struct snd_usb_caiaqdev*,struct urb*,TYPE_1__*) ;
 int read_in_urb (struct snd_usb_caiaqdev*,struct urb*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int,int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void read_completed(struct urb *urb)
{
 struct snd_usb_caiaq_cb_info *info = urb->context;
 struct snd_usb_caiaqdev *cdev;
 struct device *dev;
 struct urb *out = ((void*)0);
 int i, frame, len, send_it = 0, outframe = 0;
 unsigned long flags;
 size_t offset = 0;

 if (urb->status || !info)
  return;

 cdev = info->cdev;
 dev = caiaqdev_to_dev(cdev);

 if (!cdev->streaming)
  return;


 for (i = 0; i < N_URBS; i++)
  if (test_and_set_bit(i, &cdev->outurb_active_mask) == 0) {
   out = cdev->data_urbs_out[i];
   break;
  }

 if (!out) {
  dev_err(dev, "Unable to find an output urb to use\n");
  goto requeue;
 }



 for (frame = 0; frame < FRAMES_PER_URB; frame++) {
  if (urb->iso_frame_desc[frame].status)
   continue;

  len = urb->iso_frame_desc[outframe].actual_length;
  out->iso_frame_desc[outframe].length = len;
  out->iso_frame_desc[outframe].actual_length = 0;
  out->iso_frame_desc[outframe].offset = offset;
  offset += len;

  if (len > 0) {
   spin_lock_irqsave(&cdev->spinlock, flags);
   fill_out_urb(cdev, out, &out->iso_frame_desc[outframe]);
   read_in_urb(cdev, urb, &urb->iso_frame_desc[frame]);
   spin_unlock_irqrestore(&cdev->spinlock, flags);
   check_for_elapsed_periods(cdev, cdev->sub_playback);
   check_for_elapsed_periods(cdev, cdev->sub_capture);
   send_it = 1;
  }

  outframe++;
 }

 if (send_it) {
  out->number_of_packets = outframe;
  usb_submit_urb(out, GFP_ATOMIC);
 } else {
  struct snd_usb_caiaq_cb_info *oinfo = out->context;
  clear_bit(oinfo->index, &cdev->outurb_active_mask);
 }

requeue:

 for (frame = 0; frame < FRAMES_PER_URB; frame++) {
  urb->iso_frame_desc[frame].offset = BYTES_PER_FRAME * frame;
  urb->iso_frame_desc[frame].length = BYTES_PER_FRAME;
  urb->iso_frame_desc[frame].actual_length = 0;
 }

 urb->number_of_packets = FRAMES_PER_URB;
 usb_submit_urb(urb, GFP_ATOMIC);
}
