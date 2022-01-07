
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct omap_dmic {int dummy; } ;




 int omap_dmic_start (struct omap_dmic*) ;
 int omap_dmic_stop (struct omap_dmic*) ;
 struct omap_dmic* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_dmic_dai_trigger(struct snd_pcm_substream *substream,
      int cmd, struct snd_soc_dai *dai)
{
 struct omap_dmic *dmic = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 129:
  omap_dmic_start(dmic);
  break;
 case 128:
  omap_dmic_stop(dmic);
  break;
 default:
  break;
 }

 return 0;
}
