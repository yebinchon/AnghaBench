
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait_queue; int fifo; int active; } ;
struct usb_line6 {scalar_t__ message_length; TYPE_1__ messages; int buffer_message; } ;


 scalar_t__ kfifo_avail (int *) ;
 int kfifo_in (int *,int ,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void line6_hwdep_push_message(struct usb_line6 *line6)
{
 if (!line6->messages.active)
  return;

 if (kfifo_avail(&line6->messages.fifo) >= line6->message_length) {

  kfifo_in(&line6->messages.fifo,
   line6->buffer_message, line6->message_length);
 }

 wake_up_interruptible(&line6->messages.wait_queue);
}
