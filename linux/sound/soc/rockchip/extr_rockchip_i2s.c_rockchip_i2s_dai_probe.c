
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int * playback_dma_data; int * capture_dma_data; } ;
struct rk_i2s_dev {int playback_dma_data; int capture_dma_data; } ;


 struct rk_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int rockchip_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct rk_i2s_dev *i2s = snd_soc_dai_get_drvdata(dai);

 dai->capture_dma_data = &i2s->capture_dma_data;
 dai->playback_dma_data = &i2s->playback_dma_data;

 return 0;
}
