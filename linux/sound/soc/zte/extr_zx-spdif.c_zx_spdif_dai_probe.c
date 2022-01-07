
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxburst; scalar_t__ addr; } ;
struct zx_spdif_info {TYPE_1__ dma_data; scalar_t__ mapbase; } ;
struct snd_soc_dai {int dev; } ;


 scalar_t__ ZX_DATA ;
 struct zx_spdif_info* dev_get_drvdata (int ) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,TYPE_1__*,int *) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct zx_spdif_info*) ;

__attribute__((used)) static int zx_spdif_dai_probe(struct snd_soc_dai *dai)
{
 struct zx_spdif_info *zx_spdif = dev_get_drvdata(dai->dev);

 snd_soc_dai_set_drvdata(dai, zx_spdif);
 zx_spdif->dma_data.addr = zx_spdif->mapbase + ZX_DATA;
 zx_spdif->dma_data.maxburst = 8;
 snd_soc_dai_init_dma_data(dai, &zx_spdif->dma_data, ((void*)0));
 return 0;
}
