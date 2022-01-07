
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct snd_card {int dummy; } ;
struct hiface_chip {struct snd_card* card; } ;


 int hiface_pcm_abort (struct hiface_chip*) ;
 int snd_card_disconnect (struct snd_card*) ;
 int snd_card_free_when_closed (struct snd_card*) ;
 struct hiface_chip* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void hiface_chip_disconnect(struct usb_interface *intf)
{
 struct hiface_chip *chip;
 struct snd_card *card;

 chip = usb_get_intfdata(intf);
 if (!chip)
  return;

 card = chip->card;


 snd_card_disconnect(card);

 hiface_pcm_abort(chip);
 snd_card_free_when_closed(card);
}
