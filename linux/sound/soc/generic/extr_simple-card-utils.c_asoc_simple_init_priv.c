
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_link {int num_cpus; int num_codecs; int num_platforms; int * platforms; int * codecs; int * cpus; } ;
struct snd_soc_codec_conf {int dummy; } ;
struct snd_soc_card {int num_links; int num_configs; struct snd_soc_codec_conf* codec_conf; struct snd_soc_dai_link* dai_link; } ;
struct simple_dai_props {int platforms; int codecs; int cpus; } ;
struct link_info {int link; int dais; int conf; } ;
struct device {int dummy; } ;
struct asoc_simple_priv {struct snd_soc_dai_link* dai_link; struct snd_soc_codec_conf* codec_conf; struct asoc_simple_dai* dais; struct simple_dai_props* dai_props; } ;
struct asoc_simple_dai {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 struct snd_soc_card* simple_priv_to_card (struct asoc_simple_priv*) ;
 struct device* simple_priv_to_dev (struct asoc_simple_priv*) ;

int asoc_simple_init_priv(struct asoc_simple_priv *priv,
     struct link_info *li)
{
 struct snd_soc_card *card = simple_priv_to_card(priv);
 struct device *dev = simple_priv_to_dev(priv);
 struct snd_soc_dai_link *dai_link;
 struct simple_dai_props *dai_props;
 struct asoc_simple_dai *dais;
 struct snd_soc_codec_conf *cconf = ((void*)0);
 int i;

 dai_props = devm_kcalloc(dev, li->link, sizeof(*dai_props), GFP_KERNEL);
 dai_link = devm_kcalloc(dev, li->link, sizeof(*dai_link), GFP_KERNEL);
 dais = devm_kcalloc(dev, li->dais, sizeof(*dais), GFP_KERNEL);
 if (!dai_props || !dai_link || !dais)
  return -ENOMEM;

 if (li->conf) {
  cconf = devm_kcalloc(dev, li->conf, sizeof(*cconf), GFP_KERNEL);
  if (!cconf)
   return -ENOMEM;
 }
 for (i = 0; i < li->link; i++) {
  dai_link[i].cpus = &dai_props[i].cpus;
  dai_link[i].num_cpus = 1;
  dai_link[i].codecs = &dai_props[i].codecs;
  dai_link[i].num_codecs = 1;
  dai_link[i].platforms = &dai_props[i].platforms;
  dai_link[i].num_platforms = 1;
 }

 priv->dai_props = dai_props;
 priv->dai_link = dai_link;
 priv->dais = dais;
 priv->codec_conf = cconf;

 card->dai_link = priv->dai_link;
 card->num_links = li->link;
 card->codec_conf = cconf;
 card->num_configs = li->conf;

 return 0;
}
