
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct scarlett2_config {int size; int offset; } ;


 struct scarlett2_config* scarlett2_config_items ;
 int scarlett2_usb_get (struct usb_mixer_interface*,int ,void*,int) ;

__attribute__((used)) static int scarlett2_usb_get_config(
 struct usb_mixer_interface *mixer,
 int config_item_num, int count, void *buf)
{
 const struct scarlett2_config config_item =
        scarlett2_config_items[config_item_num];
 int size = config_item.size * count;

 return scarlett2_usb_get(mixer, config_item.offset, buf, size);
}
