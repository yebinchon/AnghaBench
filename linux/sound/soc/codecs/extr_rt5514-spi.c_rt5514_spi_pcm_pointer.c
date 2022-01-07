
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct rt5514_dsp {int dma_offset; } ;
typedef int snd_pcm_uframes_t ;


 int DRV_NAME ;
 int bytes_to_frames (struct snd_pcm_runtime*,int ) ;
 struct rt5514_dsp* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t rt5514_spi_pcm_pointer(
  struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct rt5514_dsp *rt5514_dsp =
  snd_soc_component_get_drvdata(component);

 return bytes_to_frames(runtime, rt5514_dsp->dma_offset);
}
