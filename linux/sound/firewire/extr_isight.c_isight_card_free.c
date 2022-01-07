
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct isight* private_data; } ;
struct isight {int resources; } ;


 int fw_iso_resources_destroy (int *) ;

__attribute__((used)) static void isight_card_free(struct snd_card *card)
{
 struct isight *isight = card->private_data;

 fw_iso_resources_destroy(&isight->resources);
}
