
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6 {int message_length; int * buffer_message; int (* process_message ) (struct usb_line6*) ;int ifcdev; TYPE_2__* properties; TYPE_1__* line6midi; } ;
struct urb {int actual_length; int * transfer_buffer; int status; scalar_t__ context; } ;
struct midi_buffer {int dummy; } ;
struct TYPE_4__ {int capabilities; } ;
struct TYPE_3__ {struct midi_buffer midibuf_in; } ;


 int ESHUTDOWN ;
 int LINE6_CAP_CONTROL_MIDI ;
 int LINE6_MIDI_MESSAGE_MAXLEN ;
 int dev_dbg (int ,char*,int,int) ;
 int line6_midi_receive (struct usb_line6*,int *,int) ;
 int line6_midibuf_ignore (struct midi_buffer*,int) ;
 int line6_midibuf_read (struct midi_buffer*,int *,int ) ;
 int line6_midibuf_write (struct midi_buffer*,int *,int) ;
 int line6_start_listen (struct usb_line6*) ;
 int stub1 (struct usb_line6*) ;
 int stub2 (struct usb_line6*) ;

__attribute__((used)) static void line6_data_received(struct urb *urb)
{
 struct usb_line6 *line6 = (struct usb_line6 *)urb->context;
 struct midi_buffer *mb = &line6->line6midi->midibuf_in;
 int done;

 if (urb->status == -ESHUTDOWN)
  return;

 if (line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI) {
  done =
   line6_midibuf_write(mb, urb->transfer_buffer, urb->actual_length);

  if (done < urb->actual_length) {
   line6_midibuf_ignore(mb, done);
   dev_dbg(line6->ifcdev, "%d %d buffer overflow - message skipped\n",
    done, urb->actual_length);
  }

  for (;;) {
   done =
    line6_midibuf_read(mb, line6->buffer_message,
      LINE6_MIDI_MESSAGE_MAXLEN);

   if (done == 0)
    break;

   line6->message_length = done;
   line6_midi_receive(line6, line6->buffer_message, done);

   if (line6->process_message)
    line6->process_message(line6);
  }
 } else {
  line6->buffer_message = urb->transfer_buffer;
  line6->message_length = urb->actual_length;
  if (line6->process_message)
   line6->process_message(line6);
  line6->buffer_message = ((void*)0);
 }

 line6_start_listen(line6);
}
