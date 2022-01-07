
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct rt5514_dsp {int copy_work; int dma_lock; int * substream; } ;


 int DRV_NAME ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_lib_free_vmalloc_buffer (struct snd_pcm_substream*) ;
 struct rt5514_dsp* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int rt5514_spi_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct rt5514_dsp *rt5514_dsp =
  snd_soc_component_get_drvdata(component);

 mutex_lock(&rt5514_dsp->dma_lock);
 rt5514_dsp->substream = ((void*)0);
 mutex_unlock(&rt5514_dsp->dma_lock);

 cancel_delayed_work_sync(&rt5514_dsp->copy_work);

 return snd_pcm_lib_free_vmalloc_buffer(substream);
}
