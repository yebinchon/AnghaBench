
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_card {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int of_property_read_bool (int ,char const*) ;

__attribute__((used)) static int axg_card_parse_of_optional(struct snd_soc_card *card,
          const char *propname,
          int (*func)(struct snd_soc_card *c,
        const char *p))
{

 if (!of_property_read_bool(card->dev->of_node, propname))
  return 0;


 return func(card, propname);
}
