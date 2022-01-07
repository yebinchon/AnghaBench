
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct snd_soc_card {int fully_routed; int num_links; TYPE_1__* dai_link; void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; int owner; TYPE_6__* dev; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct device_node {int dummy; } ;
struct abe_twl6040 {TYPE_1__* dai_links; int mclk_freq; int jack_detection; struct snd_soc_card card; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct TYPE_9__ {char* name; char* stream_name; int num_cpus; int num_platforms; int num_codecs; int * ops; int init; int codecs; TYPE_2__* platforms; TYPE_3__* cpus; } ;


 void* ARRAY_SIZE (void*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 void* audio_map ;
 int dev_err (TYPE_6__*,char*,...) ;
 struct abe_twl6040* devm_kzalloc (TYPE_6__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_6__*,struct snd_soc_card*) ;
 int link0_codecs ;
 TYPE_3__* link0_cpus ;
 TYPE_2__* link0_platforms ;
 int link1_codecs ;
 TYPE_3__* link1_cpus ;
 TYPE_2__* link1_platforms ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int omap_abe_dmic_init ;
 int omap_abe_dmic_ops ;
 int omap_abe_ops ;
 int omap_abe_twl6040_init ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct abe_twl6040*) ;
 int snd_soc_of_parse_audio_routing (struct snd_soc_card*,char*) ;
 scalar_t__ snd_soc_of_parse_card_name (struct snd_soc_card*,char*) ;
 void* twl6040_dapm_widgets ;

__attribute__((used)) static int omap_abe_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct snd_soc_card *card;
 struct device_node *dai_node;
 struct abe_twl6040 *priv;
 int num_links = 0;
 int ret = 0;

 if (!node) {
  dev_err(&pdev->dev, "of node is missing.\n");
  return -ENODEV;
 }

 priv = devm_kzalloc(&pdev->dev, sizeof(struct abe_twl6040), GFP_KERNEL);
 if (priv == ((void*)0))
  return -ENOMEM;

 card = &priv->card;
 card->dev = &pdev->dev;
 card->owner = THIS_MODULE;
 card->dapm_widgets = twl6040_dapm_widgets;
 card->num_dapm_widgets = ARRAY_SIZE(twl6040_dapm_widgets);
 card->dapm_routes = audio_map;
 card->num_dapm_routes = ARRAY_SIZE(audio_map);

 if (snd_soc_of_parse_card_name(card, "ti,model")) {
  dev_err(&pdev->dev, "Card name is not provided\n");
  return -ENODEV;
 }

 ret = snd_soc_of_parse_audio_routing(card, "ti,audio-routing");
 if (ret) {
  dev_err(&pdev->dev, "Error while parsing DAPM routing\n");
  return ret;
 }

 dai_node = of_parse_phandle(node, "ti,mcpdm", 0);
 if (!dai_node) {
  dev_err(&pdev->dev, "McPDM node is not provided\n");
  return -EINVAL;
 }

 priv->dai_links[0].name = "DMIC";
 priv->dai_links[0].stream_name = "TWL6040";
 priv->dai_links[0].cpus = link0_cpus;
 priv->dai_links[0].num_cpus = 1;
 priv->dai_links[0].cpus->of_node = dai_node;
 priv->dai_links[0].platforms = link0_platforms;
 priv->dai_links[0].num_platforms = 1;
 priv->dai_links[0].platforms->of_node = dai_node;
 priv->dai_links[0].codecs = link0_codecs;
 priv->dai_links[0].num_codecs = 1;
 priv->dai_links[0].init = omap_abe_twl6040_init;
 priv->dai_links[0].ops = &omap_abe_ops;

 dai_node = of_parse_phandle(node, "ti,dmic", 0);
 if (dai_node) {
  num_links = 2;
  priv->dai_links[1].name = "TWL6040";
  priv->dai_links[1].stream_name = "DMIC Capture";
  priv->dai_links[1].cpus = link1_cpus;
  priv->dai_links[1].num_cpus = 1;
  priv->dai_links[1].cpus->of_node = dai_node;
  priv->dai_links[1].platforms = link1_platforms;
  priv->dai_links[1].num_platforms = 1;
  priv->dai_links[1].platforms->of_node = dai_node;
  priv->dai_links[1].codecs = link1_codecs;
  priv->dai_links[1].num_codecs = 1;
  priv->dai_links[1].init = omap_abe_dmic_init;
  priv->dai_links[1].ops = &omap_abe_dmic_ops;
 } else {
  num_links = 1;
 }

 priv->jack_detection = of_property_read_bool(node, "ti,jack-detection");
 of_property_read_u32(node, "ti,mclk-freq", &priv->mclk_freq);
 if (!priv->mclk_freq) {
  dev_err(&pdev->dev, "MCLK frequency not provided\n");
  return -EINVAL;
 }

 card->fully_routed = 1;

 if (!priv->mclk_freq) {
  dev_err(&pdev->dev, "MCLK frequency missing\n");
  return -ENODEV;
 }

 card->dai_link = priv->dai_links;
 card->num_links = num_links;

 snd_soc_card_set_drvdata(card, priv);

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret)
  dev_err(&pdev->dev, "devm_snd_soc_register_card() failed: %d\n",
   ret);

 return ret;
}
