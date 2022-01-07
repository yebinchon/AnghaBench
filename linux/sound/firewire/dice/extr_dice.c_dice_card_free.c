
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dummy; } ;
struct snd_card {struct snd_dice* private_data; } ;


 int snd_dice_stream_destroy_duplex (struct snd_dice*) ;
 int snd_dice_transaction_destroy (struct snd_dice*) ;

__attribute__((used)) static void dice_card_free(struct snd_card *card)
{
 struct snd_dice *dice = card->private_data;

 snd_dice_stream_destroy_duplex(dice);
 snd_dice_transaction_destroy(dice);
}
