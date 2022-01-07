
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {TYPE_2__* dev; scalar_t__ actual_length; scalar_t__ status; struct comm_runtime* context; } ;
struct midi_runtime {int (* in_received ) (struct midi_runtime*,int*,int) ;} ;
struct comm_runtime {int* receiver_buffer; TYPE_1__* chip; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int shutdown; struct midi_runtime* midi; } ;


 int GFP_ATOMIC ;
 int dev_warn (int *,char*) ;
 int stub1 (struct midi_runtime*,int*,int) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void usb6fire_comm_receiver_handler(struct urb *urb)
{
 struct comm_runtime *rt = urb->context;
 struct midi_runtime *midi_rt = rt->chip->midi;

 if (!urb->status) {
  if (rt->receiver_buffer[0] == 0x10)
   if (midi_rt)
    midi_rt->in_received(midi_rt,
      rt->receiver_buffer + 2,
      rt->receiver_buffer[1]);
 }

 if (!rt->chip->shutdown) {
  urb->status = 0;
  urb->actual_length = 0;
  if (usb_submit_urb(urb, GFP_ATOMIC) < 0)
   dev_warn(&urb->dev->dev,
     "comm data receiver aborted.\n");
 }
}
