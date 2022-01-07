
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {int dummy; } ;
struct snd_card {struct snd_ff* private_data; } ;


 int snd_ff_stream_destroy_duplex (struct snd_ff*) ;
 int snd_ff_transaction_unregister (struct snd_ff*) ;

__attribute__((used)) static void ff_card_free(struct snd_card *card)
{
 struct snd_ff *ff = card->private_data;

 snd_ff_stream_destroy_duplex(ff);
 snd_ff_transaction_unregister(ff);
}
