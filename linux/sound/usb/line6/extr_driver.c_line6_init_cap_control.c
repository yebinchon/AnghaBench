
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {int ifcdev; void* buffer_message; TYPE_1__* properties; int urb_listen; void* buffer_listen; } ;
struct TYPE_2__ {int capabilities; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LINE6_BUFSIZE_LISTEN ;
 int LINE6_CAP_CONTROL_MIDI ;
 int LINE6_MIDI_MESSAGE_MAXLEN ;
 int dev_err (int ,char*,int) ;
 void* kmalloc (int ,int ) ;
 int line6_hwdep_init (struct usb_line6*) ;
 int line6_start_listen (struct usb_line6*) ;
 int usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int line6_init_cap_control(struct usb_line6 *line6)
{
 int ret;


 line6->buffer_listen = kmalloc(LINE6_BUFSIZE_LISTEN, GFP_KERNEL);
 if (!line6->buffer_listen)
  return -ENOMEM;

 line6->urb_listen = usb_alloc_urb(0, GFP_KERNEL);
 if (!line6->urb_listen)
  return -ENOMEM;

 if (line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI) {
  line6->buffer_message = kmalloc(LINE6_MIDI_MESSAGE_MAXLEN, GFP_KERNEL);
  if (!line6->buffer_message)
   return -ENOMEM;
 } else {
  ret = line6_hwdep_init(line6);
  if (ret < 0)
   return ret;
 }

 ret = line6_start_listen(line6);
 if (ret < 0) {
  dev_err(line6->ifcdev, "cannot start listening: %d\n", ret);
  return ret;
 }

 return 0;
}
