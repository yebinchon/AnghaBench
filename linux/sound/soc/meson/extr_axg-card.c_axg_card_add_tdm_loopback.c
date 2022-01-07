
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_link_component {char* dai_name; char* name; int of_node; } ;
struct snd_soc_dai_link {int num_cpus; int num_codecs; int dpcm_capture; int no_pcm; struct snd_soc_dai_link_component* cpus; int init; int * ops; struct snd_soc_dai_link_component* codecs; scalar_t__ name; scalar_t__ stream_name; } ;
struct snd_soc_card {int dev; struct snd_soc_dai_link* dai_link; scalar_t__ num_links; } ;
struct axg_card {int * link_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int axg_card_reallocate_links (struct axg_card*,scalar_t__) ;
 int axg_card_tdm_be_ops ;
 int axg_card_tdm_dai_lb_init ;
 struct snd_soc_dai_link_component* devm_kzalloc (int ,int,int ) ;
 scalar_t__ kasprintf (int ,char*,scalar_t__) ;
 int of_node_get (int ) ;
 struct axg_card* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int axg_card_add_tdm_loopback(struct snd_soc_card *card,
         int *index)
{
 struct axg_card *priv = snd_soc_card_get_drvdata(card);
 struct snd_soc_dai_link *pad = &card->dai_link[*index];
 struct snd_soc_dai_link *lb;
 struct snd_soc_dai_link_component *dlc;
 int ret;


 ret = axg_card_reallocate_links(priv, card->num_links + 1);
 if (ret)
  return ret;

 lb = &card->dai_link[*index + 1];

 lb->name = kasprintf(GFP_KERNEL, "%s-lb", pad->name);
 if (!lb->name)
  return -ENOMEM;

 dlc = devm_kzalloc(card->dev, 2 * sizeof(*dlc), GFP_KERNEL);
 if (!dlc)
  return -ENOMEM;

 lb->cpus = &dlc[0];
 lb->codecs = &dlc[1];
 lb->num_cpus = 1;
 lb->num_codecs = 1;

 lb->stream_name = lb->name;
 lb->cpus->of_node = pad->cpus->of_node;
 lb->cpus->dai_name = "TDM Loopback";
 lb->codecs->name = "snd-soc-dummy";
 lb->codecs->dai_name = "snd-soc-dummy-dai";
 lb->dpcm_capture = 1;
 lb->no_pcm = 1;
 lb->ops = &axg_card_tdm_be_ops;
 lb->init = axg_card_tdm_dai_lb_init;


 priv->link_data[*index + 1] = priv->link_data[*index];





 of_node_get(lb->cpus->of_node);


 *index += 1;

 return 0;
}
