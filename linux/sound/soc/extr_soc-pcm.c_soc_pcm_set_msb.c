
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; } ;
struct snd_pcm_substream {int runtime; struct snd_soc_pcm_runtime* private_data; } ;


 int dev_warn (int ,char*,int,int) ;
 int snd_pcm_hw_constraint_msbits (int ,int ,int ,int) ;

__attribute__((used)) static void soc_pcm_set_msb(struct snd_pcm_substream *substream, int bits)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 int ret;

 if (!bits)
  return;

 ret = snd_pcm_hw_constraint_msbits(substream->runtime, 0, 0, bits);
 if (ret != 0)
  dev_warn(rtd->dev, "ASoC: Failed to set MSB %d: %d\n",
     bits, ret);
}
