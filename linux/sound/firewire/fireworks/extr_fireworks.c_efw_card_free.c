
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int card_index; } ;
struct snd_card {struct snd_efw* private_data; } ;


 int clear_bit (int ,int ) ;
 int devices_mutex ;
 int devices_used ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_efw_stream_destroy_duplex (struct snd_efw*) ;
 int snd_efw_transaction_remove_instance (struct snd_efw*) ;

__attribute__((used)) static void
efw_card_free(struct snd_card *card)
{
 struct snd_efw *efw = card->private_data;

 mutex_lock(&devices_mutex);
 clear_bit(efw->card_index, devices_used);
 mutex_unlock(&devices_mutex);

 snd_efw_stream_destroy_duplex(efw);
 snd_efw_transaction_remove_instance(efw);
}
