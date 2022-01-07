
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {scalar_t__ card; scalar_t__ control; scalar_t__ comm; scalar_t__ midi; scalar_t__ pcm; } ;


 int snd_card_free (scalar_t__) ;
 int usb6fire_comm_destroy (struct sfire_chip*) ;
 int usb6fire_control_destroy (struct sfire_chip*) ;
 int usb6fire_midi_destroy (struct sfire_chip*) ;
 int usb6fire_pcm_destroy (struct sfire_chip*) ;

__attribute__((used)) static void usb6fire_chip_destroy(struct sfire_chip *chip)
{
 if (chip) {
  if (chip->pcm)
   usb6fire_pcm_destroy(chip);
  if (chip->midi)
   usb6fire_midi_destroy(chip);
  if (chip->comm)
   usb6fire_comm_destroy(chip);
  if (chip->control)
   usb6fire_control_destroy(chip);
  if (chip->card)
   snd_card_free(chip->card);
 }
}
