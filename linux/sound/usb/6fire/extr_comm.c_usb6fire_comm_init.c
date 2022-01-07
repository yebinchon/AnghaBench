
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_buffer_length; int interval; struct comm_runtime* context; int complete; TYPE_1__* dev; int pipe; struct comm_runtime* transfer_buffer; } ;
struct sfire_chip {struct comm_runtime* comm; TYPE_1__* dev; } ;
struct comm_runtime {int serial; struct comm_runtime* receiver_buffer; int write16; int write8; int init_urb; struct sfire_chip* chip; struct urb receiver; } ;
struct TYPE_2__ {int dev; } ;


 int COMM_EP ;
 int COMM_RECEIVER_BUFSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int kfree (struct comm_runtime*) ;
 void* kzalloc (int,int ) ;
 int usb6fire_comm_init_urb ;
 int usb6fire_comm_receiver_handler ;
 int usb6fire_comm_write16 ;
 int usb6fire_comm_write8 ;
 int usb_init_urb (struct urb*) ;
 int usb_rcvintpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

int usb6fire_comm_init(struct sfire_chip *chip)
{
 struct comm_runtime *rt = kzalloc(sizeof(struct comm_runtime),
   GFP_KERNEL);
 struct urb *urb;
 int ret;

 if (!rt)
  return -ENOMEM;

 rt->receiver_buffer = kzalloc(COMM_RECEIVER_BUFSIZE, GFP_KERNEL);
 if (!rt->receiver_buffer) {
  kfree(rt);
  return -ENOMEM;
 }

 urb = &rt->receiver;
 rt->serial = 1;
 rt->chip = chip;
 usb_init_urb(urb);
 rt->init_urb = usb6fire_comm_init_urb;
 rt->write8 = usb6fire_comm_write8;
 rt->write16 = usb6fire_comm_write16;


 urb->transfer_buffer = rt->receiver_buffer;
 urb->transfer_buffer_length = COMM_RECEIVER_BUFSIZE;
 urb->pipe = usb_rcvintpipe(chip->dev, COMM_EP);
 urb->dev = chip->dev;
 urb->complete = usb6fire_comm_receiver_handler;
 urb->context = rt;
 urb->interval = 1;
 ret = usb_submit_urb(urb, GFP_KERNEL);
 if (ret < 0) {
  kfree(rt->receiver_buffer);
  kfree(rt);
  dev_err(&chip->dev->dev, "cannot create comm data receiver.");
  return ret;
 }
 chip->comm = rt;
 return 0;
}
