
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int dummy; } ;
struct urb {int dummy; } ;
struct message {char const* buffer; int size; scalar_t__ done; struct usb_line6* line6; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int kfree (struct message*) ;
 struct message* kmalloc (int,int ) ;
 int line6_send_raw_message_async_part (struct message*,struct urb*) ;
 struct urb* usb_alloc_urb (int ,int ) ;

int line6_send_raw_message_async(struct usb_line6 *line6, const char *buffer,
     int size)
{
 struct message *msg;
 struct urb *urb;


 msg = kmalloc(sizeof(struct message), GFP_ATOMIC);
 if (msg == ((void*)0))
  return -ENOMEM;


 urb = usb_alloc_urb(0, GFP_ATOMIC);

 if (urb == ((void*)0)) {
  kfree(msg);
  return -ENOMEM;
 }


 msg->line6 = line6;
 msg->buffer = buffer;
 msg->size = size;
 msg->done = 0;


 return line6_send_raw_message_async_part(msg, urb);
}
