
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_spdif {int playback_dma_data; } ;
struct snd_soc_dai {int * playback_dma_data; int * capture_dma_data; } ;


 struct tegra20_spdif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int tegra20_spdif_probe(struct snd_soc_dai *dai)
{
 struct tegra20_spdif *spdif = snd_soc_dai_get_drvdata(dai);

 dai->capture_dma_data = ((void*)0);
 dai->playback_dma_data = &spdif->playback_dma_data;

 return 0;
}
