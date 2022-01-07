
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int dummy; } ;
struct snd_card {struct snd_tscm* private_data; } ;


 int snd_tscm_stream_destroy_duplex (struct snd_tscm*) ;
 int snd_tscm_transaction_unregister (struct snd_tscm*) ;

__attribute__((used)) static void tscm_card_free(struct snd_card *card)
{
 struct snd_tscm *tscm = card->private_data;

 snd_tscm_transaction_unregister(tscm);
 snd_tscm_stream_destroy_duplex(tscm);
}
