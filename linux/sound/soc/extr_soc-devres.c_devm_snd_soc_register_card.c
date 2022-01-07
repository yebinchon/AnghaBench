
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_card_release ;
 int devres_add (struct device*,struct snd_soc_card**) ;
 struct snd_soc_card** devres_alloc (int ,int,int ) ;
 int devres_free (struct snd_soc_card**) ;
 int snd_soc_register_card (struct snd_soc_card*) ;

int devm_snd_soc_register_card(struct device *dev, struct snd_soc_card *card)
{
 struct snd_soc_card **ptr;
 int ret;

 ptr = devres_alloc(devm_card_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = snd_soc_register_card(card);
 if (ret == 0) {
  *ptr = card;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return ret;
}
