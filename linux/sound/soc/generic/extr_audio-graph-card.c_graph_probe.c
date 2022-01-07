
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int probe; int num_dapm_widgets; int dapm_widgets; struct device* dev; int owner; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct link_info {int dais; int link; } ;
struct asoc_simple_priv {int pa_gpio; } ;
typedef int li ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int asoc_simple_clean_reference (struct snd_soc_card*) ;
 int asoc_simple_debug_info (struct asoc_simple_priv*) ;
 int asoc_simple_init_priv (struct asoc_simple_priv*,struct link_info*) ;
 int dev_err (struct device*,char*,int) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct asoc_simple_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_card (struct device*,struct snd_soc_card*) ;
 int graph_card_probe ;
 int graph_dapm_widgets ;
 int graph_get_dais_count (struct asoc_simple_priv*,struct link_info*) ;
 int graph_parse_of (struct asoc_simple_priv*) ;
 int memset (struct link_info*,int ,int) ;
 struct snd_soc_card* simple_priv_to_card (struct asoc_simple_priv*) ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct asoc_simple_priv*) ;

__attribute__((used)) static int graph_probe(struct platform_device *pdev)
{
 struct asoc_simple_priv *priv;
 struct device *dev = &pdev->dev;
 struct snd_soc_card *card;
 struct link_info li;
 int ret;


 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 card = simple_priv_to_card(priv);
 card->owner = THIS_MODULE;
 card->dev = dev;
 card->dapm_widgets = graph_dapm_widgets;
 card->num_dapm_widgets = ARRAY_SIZE(graph_dapm_widgets);
 card->probe = graph_card_probe;

 memset(&li, 0, sizeof(li));
 graph_get_dais_count(priv, &li);
 if (!li.link || !li.dais)
  return -EINVAL;

 ret = asoc_simple_init_priv(priv, &li);
 if (ret < 0)
  return ret;

 priv->pa_gpio = devm_gpiod_get_optional(dev, "pa", GPIOD_OUT_LOW);
 if (IS_ERR(priv->pa_gpio)) {
  ret = PTR_ERR(priv->pa_gpio);
  dev_err(dev, "failed to get amplifier gpio: %d\n", ret);
  return ret;
 }

 ret = graph_parse_of(priv);
 if (ret < 0) {
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "parse error %d\n", ret);
  goto err;
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
