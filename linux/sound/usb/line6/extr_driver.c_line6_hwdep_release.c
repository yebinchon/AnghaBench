
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ active; } ;
struct usb_line6 {TYPE_1__ messages; } ;
struct snd_hwdep {struct usb_line6* private_data; } ;
struct file {int dummy; } ;



__attribute__((used)) static int line6_hwdep_release(struct snd_hwdep *hw, struct file *file)
{
 struct usb_line6 *line6 = hw->private_data;

 line6->messages.active = 0;

 return 0;
}
