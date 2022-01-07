
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct sfire_chip {size_t regidx; int shutdown; int intf_count; } ;


 int ** chips ;
 int ** devices ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;
 int usb6fire_chip_abort (struct sfire_chip*) ;
 int usb6fire_chip_destroy (struct sfire_chip*) ;
 struct sfire_chip* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void usb6fire_chip_disconnect(struct usb_interface *intf)
{
 struct sfire_chip *chip;

 chip = usb_get_intfdata(intf);
 if (chip) {
  chip->intf_count--;
  if (!chip->intf_count) {
   mutex_lock(&register_mutex);
   devices[chip->regidx] = ((void*)0);
   chips[chip->regidx] = ((void*)0);
   mutex_unlock(&register_mutex);

   chip->shutdown = 1;
   usb6fire_chip_abort(chip);
   usb6fire_chip_destroy(chip);
  }
 }
}
