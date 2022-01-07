
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct snd_usb_caiaq_cb_info* context; } ;
struct snd_usb_caiaqdev {int output_running; int outurb_active_mask; int prepare_wait_queue; } ;
struct snd_usb_caiaq_cb_info {int index; struct snd_usb_caiaqdev* cdev; } ;


 int clear_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void write_completed(struct urb *urb)
{
 struct snd_usb_caiaq_cb_info *info = urb->context;
 struct snd_usb_caiaqdev *cdev = info->cdev;

 if (!cdev->output_running) {
  cdev->output_running = 1;
  wake_up(&cdev->prepare_wait_queue);
 }

 clear_bit(info->index, &cdev->outurb_active_mask);
}
