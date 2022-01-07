
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct dmaengine_pcm {int flags; } ;
typedef int snd_pcm_uframes_t ;


 int SND_DMAENGINE_PCM_DRV_NAME ;
 int SND_DMAENGINE_PCM_FLAG_NO_RESIDUE ;
 int snd_dmaengine_pcm_pointer (struct snd_pcm_substream*) ;
 int snd_dmaengine_pcm_pointer_no_residue (struct snd_pcm_substream*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct dmaengine_pcm* soc_component_to_pcm (struct snd_soc_component*) ;

__attribute__((used)) static snd_pcm_uframes_t dmaengine_pcm_pointer(
 struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, SND_DMAENGINE_PCM_DRV_NAME);
 struct dmaengine_pcm *pcm = soc_component_to_pcm(component);

 if (pcm->flags & SND_DMAENGINE_PCM_FLAG_NO_RESIDUE)
  return snd_dmaengine_pcm_pointer_no_residue(substream);
 else
  return snd_dmaengine_pcm_pointer(substream);
}
