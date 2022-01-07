
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct snd_bebob* private_data; } ;
struct snd_bebob {int card_index; } ;


 int clear_bit (int ,int ) ;
 int devices_mutex ;
 int devices_used ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_bebob_stream_destroy_duplex (struct snd_bebob*) ;

__attribute__((used)) static void
bebob_card_free(struct snd_card *card)
{
 struct snd_bebob *bebob = card->private_data;

 mutex_lock(&devices_mutex);
 clear_bit(bebob->card_index, devices_used);
 mutex_unlock(&devices_mutex);

 snd_bebob_stream_destroy_duplex(bebob);
}
