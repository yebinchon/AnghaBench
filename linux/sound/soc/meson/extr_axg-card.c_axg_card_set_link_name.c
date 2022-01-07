
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_link {char* name; char* stream_name; } ;
struct snd_soc_card {int dev; } ;
struct device_node {int full_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* devm_kasprintf (int ,int ,char*,char const*,int ) ;

__attribute__((used)) static int axg_card_set_link_name(struct snd_soc_card *card,
      struct snd_soc_dai_link *link,
      struct device_node *node,
      const char *prefix)
{
 char *name = devm_kasprintf(card->dev, GFP_KERNEL, "%s.%s",
        prefix, node->full_name);
 if (!name)
  return -ENOMEM;

 link->name = name;
 link->stream_name = name;

 return 0;
}
