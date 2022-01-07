
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_spdif_info {int dai_clk; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;


 int clk_prepare_enable (int ) ;
 struct zx_spdif_info* dev_get_drvdata (int ) ;

__attribute__((used)) static int zx_spdif_startup(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct zx_spdif_info *zx_spdif = dev_get_drvdata(dai->dev);

 return clk_prepare_enable(zx_spdif->dai_clk);
}
