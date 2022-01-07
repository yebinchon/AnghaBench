
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct snd_soc_dai_link {int list; TYPE_1__ dobj; } ;
struct snd_soc_card {int dai_link_list; int (* add_dai_link ) (struct snd_soc_card*,struct snd_soc_dai_link*) ;int dev; } ;


 int EINVAL ;
 scalar_t__ SND_SOC_DOBJ_DAI_LINK ;
 int client_mutex ;
 int dev_err (int ,char*,scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct snd_soc_card*,struct snd_soc_dai_link*) ;

int snd_soc_add_dai_link(struct snd_soc_card *card,
  struct snd_soc_dai_link *dai_link)
{
 if (dai_link->dobj.type
     && dai_link->dobj.type != SND_SOC_DOBJ_DAI_LINK) {
  dev_err(card->dev, "Invalid dai link type %d\n",
   dai_link->dobj.type);
  return -EINVAL;
 }

 lockdep_assert_held(&client_mutex);




 if (dai_link->dobj.type && card->add_dai_link)
  card->add_dai_link(card, dai_link);


 list_add_tail(&dai_link->list, &card->dai_link_list);

 return 0;
}
