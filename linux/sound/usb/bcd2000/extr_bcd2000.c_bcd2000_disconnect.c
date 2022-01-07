
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct bcd2000 {int card; int card_index; } ;


 int bcd2000_free_usb_related_resources (struct bcd2000*,struct usb_interface*) ;
 int clear_bit (int ,int ) ;
 int devices_mutex ;
 int devices_used ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_card_disconnect (int ) ;
 int snd_card_free_when_closed (int ) ;
 struct bcd2000* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void bcd2000_disconnect(struct usb_interface *interface)
{
 struct bcd2000 *bcd2k = usb_get_intfdata(interface);

 if (!bcd2k)
  return;

 mutex_lock(&devices_mutex);


 snd_card_disconnect(bcd2k->card);

 bcd2000_free_usb_related_resources(bcd2k, interface);

 clear_bit(bcd2k->card_index, devices_used);

 snd_card_free_when_closed(bcd2k->card);

 mutex_unlock(&devices_mutex);
}
