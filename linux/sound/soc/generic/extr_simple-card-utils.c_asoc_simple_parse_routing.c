
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_card {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef int prop ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int of_property_read_bool (struct device_node*,char*) ;
 int snd_soc_of_parse_audio_routing (struct snd_soc_card*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

int asoc_simple_parse_routing(struct snd_soc_card *card,
         char *prefix)
{
 struct device_node *node = card->dev->of_node;
 char prop[128];

 if (!prefix)
  prefix = "";

 snprintf(prop, sizeof(prop), "%s%s", prefix, "routing");

 if (!of_property_read_bool(node, prop))
  return 0;

 return snd_soc_of_parse_audio_routing(card, prop);
}
