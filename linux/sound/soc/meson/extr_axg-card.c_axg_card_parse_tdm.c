
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai_link {scalar_t__ dpcm_playback; TYPE_1__* cpus; int dai_fmt; int init; int * ops; } ;
struct snd_soc_card {int dev; struct snd_soc_dai_link* dai_link; } ;
struct device_node {int dummy; } ;
struct axg_dai_link_tdm_data {int mclk_fs; } ;
struct axg_card {struct axg_dai_link_tdm_data** link_data; } ;
struct TYPE_2__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int axg_card_add_tdm_loopback (struct snd_soc_card*,int*) ;
 int axg_card_parse_codecs_masks (struct snd_soc_card*,struct snd_soc_dai_link*,struct device_node*,struct axg_dai_link_tdm_data*) ;
 int axg_card_parse_cpu_tdm_slots (struct snd_soc_card*,struct snd_soc_dai_link*,struct device_node*,struct axg_dai_link_tdm_data*) ;
 int axg_card_parse_daifmt (struct device_node*,int ) ;
 int axg_card_tdm_be_ops ;
 int axg_card_tdm_dai_init ;
 int dev_err (int ,char*) ;
 struct axg_dai_link_tdm_data* devm_kzalloc (int ,int,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 struct axg_card* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int axg_card_parse_tdm(struct snd_soc_card *card,
         struct device_node *node,
         int *index)
{
 struct axg_card *priv = snd_soc_card_get_drvdata(card);
 struct snd_soc_dai_link *link = &card->dai_link[*index];
 struct axg_dai_link_tdm_data *be;
 int ret;


 be = devm_kzalloc(card->dev, sizeof(*be), GFP_KERNEL);
 if (!be)
  return -ENOMEM;
 priv->link_data[*index] = be;


 link->ops = &axg_card_tdm_be_ops;
 link->init = axg_card_tdm_dai_init;
 link->dai_fmt = axg_card_parse_daifmt(node, link->cpus->of_node);

 of_property_read_u32(node, "mclk-fs", &be->mclk_fs);

 ret = axg_card_parse_cpu_tdm_slots(card, link, node, be);
 if (ret) {
  dev_err(card->dev, "error parsing tdm link slots\n");
  return ret;
 }

 ret = axg_card_parse_codecs_masks(card, link, node, be);
 if (ret)
  return ret;


 if (link->dpcm_playback) {
  ret = axg_card_add_tdm_loopback(card, index);
  if (ret)
   return ret;
 }

 return 0;
}
