
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dev; struct attribute_group const** dev_groups; } ;
struct attribute_group {int dummy; } ;


 int ARRAY_SIZE (struct attribute_group const**) ;
 int ENOSPC ;
 int dev_err (int ,char*) ;

int snd_card_add_dev_attr(struct snd_card *card,
     const struct attribute_group *group)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(card->dev_groups) - 1; i++) {
  if (!card->dev_groups[i]) {
   card->dev_groups[i] = group;
   return 0;
  }
 }

 dev_err(card->dev, "Too many groups assigned\n");
 return -ENOSPC;
}
