
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {char* name; void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; struct device* dev; int dai_link; int num_links; } ;
struct device {int dummy; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 struct snd_soc_card* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct snd_soc_card* devm_kzalloc (struct device*,int,int ) ;
 void* sun4i_codec_card_dapm_routes ;
 void* sun4i_codec_card_dapm_widgets ;
 int sun4i_codec_create_link (struct device*,int *) ;

__attribute__((used)) static struct snd_soc_card *sun4i_codec_create_card(struct device *dev)
{
 struct snd_soc_card *card;

 card = devm_kzalloc(dev, sizeof(*card), GFP_KERNEL);
 if (!card)
  return ERR_PTR(-ENOMEM);

 card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 if (!card->dai_link)
  return ERR_PTR(-ENOMEM);

 card->dev = dev;
 card->name = "sun4i-codec";
 card->dapm_widgets = sun4i_codec_card_dapm_widgets;
 card->num_dapm_widgets = ARRAY_SIZE(sun4i_codec_card_dapm_widgets);
 card->dapm_routes = sun4i_codec_card_dapm_routes;
 card->num_dapm_routes = ARRAY_SIZE(sun4i_codec_card_dapm_routes);

 return card;
}
