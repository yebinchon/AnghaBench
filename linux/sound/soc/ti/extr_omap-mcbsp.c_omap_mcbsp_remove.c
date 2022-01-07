
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct omap_mcbsp {int dev; } ;


 int pm_runtime_disable (int ) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcbsp_remove(struct snd_soc_dai *dai)
{
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(dai);

 pm_runtime_disable(mcbsp->dev);

 return 0;
}
