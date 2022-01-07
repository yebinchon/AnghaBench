
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct omap_dmic {int dma_data; scalar_t__ threshold; int dev; } ;


 int OMAP_DMIC_CTRL_REG ;
 scalar_t__ OMAP_DMIC_THRES_MAX ;
 int omap_dmic_write (struct omap_dmic*,int ,int) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 struct omap_dmic* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int omap_dmic_probe(struct snd_soc_dai *dai)
{
 struct omap_dmic *dmic = snd_soc_dai_get_drvdata(dai);

 pm_runtime_enable(dmic->dev);


 pm_runtime_get_sync(dmic->dev);
 omap_dmic_write(dmic, OMAP_DMIC_CTRL_REG, 0x00);
 pm_runtime_put_sync(dmic->dev);


 dmic->threshold = OMAP_DMIC_THRES_MAX - 3;

 snd_soc_dai_init_dma_data(dai, ((void*)0), &dmic->dma_data);

 return 0;
}
