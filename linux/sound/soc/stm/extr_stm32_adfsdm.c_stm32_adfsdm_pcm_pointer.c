
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adfsdm_priv {int pos; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {int runtime; struct snd_soc_pcm_runtime* private_data; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,int ) ;
 struct stm32_adfsdm_priv* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static snd_pcm_uframes_t stm32_adfsdm_pcm_pointer(
         struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct stm32_adfsdm_priv *priv =
  snd_soc_dai_get_drvdata(rtd->cpu_dai);

 return bytes_to_frames(substream->runtime, priv->pos);
}
