
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int dummy; } ;


 int kfree (struct usb_mixer_elem_info*) ;

__attribute__((used)) static void usb_mixer_elem_info_free(struct usb_mixer_elem_info *cval)
{
 kfree(cval);
}
