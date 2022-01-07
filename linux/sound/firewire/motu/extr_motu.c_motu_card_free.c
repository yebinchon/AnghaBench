
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int dummy; } ;
struct snd_card {struct snd_motu* private_data; } ;


 int snd_motu_stream_destroy_duplex (struct snd_motu*) ;
 int snd_motu_transaction_unregister (struct snd_motu*) ;

__attribute__((used)) static void motu_card_free(struct snd_card *card)
{
 struct snd_motu *motu = card->private_data;

 snd_motu_transaction_unregister(motu);
 snd_motu_stream_destroy_duplex(motu);
}
