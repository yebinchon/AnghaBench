
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int name_prefix; int name; } ;
struct snd_soc_codec_conf {int name_prefix; scalar_t__ dev_name; struct device_node* of_node; } ;
struct snd_soc_card {int num_configs; struct snd_soc_codec_conf* codec_conf; } ;
struct device_node {int dummy; } ;


 struct device_node* soc_component_to_node (struct snd_soc_component*) ;
 int soc_set_of_name_prefix (struct snd_soc_component*) ;
 scalar_t__ strcmp (int ,scalar_t__) ;

__attribute__((used)) static void soc_set_name_prefix(struct snd_soc_card *card,
    struct snd_soc_component *component)
{
 int i;

 for (i = 0; i < card->num_configs && card->codec_conf; i++) {
  struct snd_soc_codec_conf *map = &card->codec_conf[i];
  struct device_node *of_node = soc_component_to_node(component);

  if (map->of_node && of_node != map->of_node)
   continue;
  if (map->dev_name && strcmp(component->name, map->dev_name))
   continue;
  component->name_prefix = map->name_prefix;
  return;
 }





 soc_set_of_name_prefix(component);
}
