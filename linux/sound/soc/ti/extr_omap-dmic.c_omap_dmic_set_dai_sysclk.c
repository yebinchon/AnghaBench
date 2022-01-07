
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct omap_dmic {int dev; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int SND_SOC_CLOCK_OUT ;
 int dev_err (int ,char*,int) ;
 int omap_dmic_select_fclk (struct omap_dmic*,int,unsigned int) ;
 int omap_dmic_select_outclk (struct omap_dmic*,int,unsigned int) ;
 struct omap_dmic* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_dmic_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq, int dir)
{
 struct omap_dmic *dmic = snd_soc_dai_get_drvdata(dai);

 if (dir == SND_SOC_CLOCK_IN)
  return omap_dmic_select_fclk(dmic, clk_id, freq);
 else if (dir == SND_SOC_CLOCK_OUT)
  return omap_dmic_select_outclk(dmic, clk_id, freq);

 dev_err(dmic->dev, "invalid clock direction (%d)\n", dir);
 return -EINVAL;
}
