
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_card {TYPE_1__* dai_link; scalar_t__ name; } ;
typedef int prop ;
struct TYPE_2__ {scalar_t__ name; } ;


 int snd_soc_of_parse_card_name (struct snd_soc_card*,char*) ;
 int snprintf (char*,int,char*,char*) ;

int asoc_simple_parse_card_name(struct snd_soc_card *card,
    char *prefix)
{
 int ret;

 if (!prefix)
  prefix = "";


 ret = snd_soc_of_parse_card_name(card, "label");
 if (ret < 0 || !card->name) {
  char prop[128];

  snprintf(prop, sizeof(prop), "%sname", prefix);
  ret = snd_soc_of_parse_card_name(card, prop);
  if (ret < 0)
   return ret;
 }

 if (!card->name && card->dai_link)
  card->name = card->dai_link->name;

 return 0;
}
