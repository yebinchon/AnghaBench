
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int dev; int dapm; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int ,char*,int) ;
 int dmic_map ;
 int dmic_widgets ;
 int snd_soc_dapm_add_routes (int *,int ,int ) ;
 int snd_soc_dapm_new_controls (int *,int ,int ) ;

__attribute__((used)) static int dmic_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_card *card = rtd->card;
 int ret;

 ret = snd_soc_dapm_new_controls(&card->dapm, dmic_widgets,
     ARRAY_SIZE(dmic_widgets));
 if (ret) {
  dev_err(card->dev, "DMic widget addition failed: %d\n", ret);

  return ret;
 }

 ret = snd_soc_dapm_add_routes(&card->dapm, dmic_map,
          ARRAY_SIZE(dmic_map));

 if (ret)
  dev_err(card->dev, "DMic map addition failed: %d\n", ret);

 return ret;
}
