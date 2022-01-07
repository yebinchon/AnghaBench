
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_ac97 {int playback_dma_data; int capture_dma_data; } ;
struct snd_soc_dai {int * playback_dma_data; int * capture_dma_data; } ;


 struct tegra20_ac97* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int tegra20_ac97_probe(struct snd_soc_dai *dai)
{
 struct tegra20_ac97 *ac97 = snd_soc_dai_get_drvdata(dai);

 dai->capture_dma_data = &ac97->capture_dma_data;
 dai->playback_dma_data = &ac97->playback_dma_data;

 return 0;
}
