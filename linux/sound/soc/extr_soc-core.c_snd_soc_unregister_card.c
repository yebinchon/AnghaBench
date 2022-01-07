
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int name; int dev; } ;


 int client_mutex ;
 int dev_dbg (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_soc_unbind_card (struct snd_soc_card*,int) ;

int snd_soc_unregister_card(struct snd_soc_card *card)
{
 mutex_lock(&client_mutex);
 snd_soc_unbind_card(card, 1);
 mutex_unlock(&client_mutex);
 dev_dbg(card->dev, "ASoC: Unregistered card '%s'\n", card->name);

 return 0;
}
