
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct ep93xx_i2s_info {int dummy; } ;


 int ep93xx_i2s_disable (struct ep93xx_i2s_info*,int ) ;
 struct ep93xx_i2s_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void ep93xx_i2s_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct ep93xx_i2s_info *info = snd_soc_dai_get_drvdata(dai);

 ep93xx_i2s_disable(info, substream->stream);
}
