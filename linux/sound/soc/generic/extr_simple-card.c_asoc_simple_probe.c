
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai_link_component {scalar_t__ name; scalar_t__ dai_name; } ;
struct snd_soc_dai_link {int init; int dai_fmt; scalar_t__ stream_name; scalar_t__ name; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* codecs; struct snd_soc_dai_link_component* cpus; } ;
struct snd_soc_card {scalar_t__ name; int probe; struct device* dev; int owner; } ;
struct simple_dai_props {int * codec_dai; int * cpu_dai; } ;
struct device {struct asoc_simple_card_info* platform_data; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct link_info {int dais; int link; } ;
struct device_node {int dummy; } ;
struct asoc_simple_priv {int * dais; struct simple_dai_props* dai_props; struct snd_soc_dai_link* dai_link; } ;
struct TYPE_2__ {scalar_t__ name; } ;
struct asoc_simple_card_info {TYPE_1__ codec_dai; TYPE_1__ cpu_dai; int daifmt; scalar_t__ name; scalar_t__ card; scalar_t__ platform; scalar_t__ codec; } ;
typedef int li ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int asoc_simple_clean_reference (struct snd_soc_card*) ;
 int asoc_simple_dai_init ;
 int asoc_simple_debug_info (struct asoc_simple_priv*) ;
 int asoc_simple_init_priv (struct asoc_simple_priv*,struct link_info*) ;
 int dev_err (struct device*,char*,...) ;
 struct asoc_simple_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_card (struct device*,struct snd_soc_card*) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int memset (struct link_info*,int ,int) ;
 scalar_t__ of_device_is_available (struct device_node*) ;
 int simple_get_dais_count (struct asoc_simple_priv*,struct link_info*) ;
 int simple_parse_of (struct asoc_simple_priv*) ;
 struct snd_soc_card* simple_priv_to_card (struct asoc_simple_priv*) ;
 int simple_soc_probe ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct asoc_simple_priv*) ;

__attribute__((used)) static int asoc_simple_probe(struct platform_device *pdev)
{
 struct asoc_simple_priv *priv;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct snd_soc_card *card;
 struct link_info li;
 int ret;


 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 card = simple_priv_to_card(priv);
 card->owner = THIS_MODULE;
 card->dev = dev;
 card->probe = simple_soc_probe;

 memset(&li, 0, sizeof(li));
 simple_get_dais_count(priv, &li);
 if (!li.link || !li.dais)
  return -EINVAL;

 ret = asoc_simple_init_priv(priv, &li);
 if (ret < 0)
  return ret;

 if (np && of_device_is_available(np)) {

  ret = simple_parse_of(priv);
  if (ret < 0) {
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "parse error %d\n", ret);
   goto err;
  }

 } else {
  struct asoc_simple_card_info *cinfo;
  struct snd_soc_dai_link_component *cpus;
  struct snd_soc_dai_link_component *codecs;
  struct snd_soc_dai_link_component *platform;
  struct snd_soc_dai_link *dai_link = priv->dai_link;
  struct simple_dai_props *dai_props = priv->dai_props;

  int dai_idx = 0;

  cinfo = dev->platform_data;
  if (!cinfo) {
   dev_err(dev, "no info for asoc-simple-card\n");
   return -EINVAL;
  }

  if (!cinfo->name ||
      !cinfo->codec_dai.name ||
      !cinfo->codec ||
      !cinfo->platform ||
      !cinfo->cpu_dai.name) {
   dev_err(dev, "insufficient asoc_simple_card_info settings\n");
   return -EINVAL;
  }

  dai_props->cpu_dai = &priv->dais[dai_idx++];
  dai_props->codec_dai = &priv->dais[dai_idx++];

  cpus = dai_link->cpus;
  cpus->dai_name = cinfo->cpu_dai.name;

  codecs = dai_link->codecs;
  codecs->name = cinfo->codec;
  codecs->dai_name = cinfo->codec_dai.name;

  platform = dai_link->platforms;
  platform->name = cinfo->platform;

  card->name = (cinfo->card) ? cinfo->card : cinfo->name;
  dai_link->name = cinfo->name;
  dai_link->stream_name = cinfo->name;
  dai_link->dai_fmt = cinfo->daifmt;
  dai_link->init = asoc_simple_dai_init;
  memcpy(dai_props->cpu_dai, &cinfo->cpu_dai,
     sizeof(*dai_props->cpu_dai));
  memcpy(dai_props->codec_dai, &cinfo->codec_dai,
     sizeof(*dai_props->codec_dai));
 }

 snd_soc_card_set_drvdata(card, priv);

 asoc_simple_debug_info(priv);

 ret = devm_snd_soc_register_card(dev, card);
 if (ret < 0)
  goto err;

 return 0;
err:
 asoc_simple_clean_reference(card);

 return ret;
}
