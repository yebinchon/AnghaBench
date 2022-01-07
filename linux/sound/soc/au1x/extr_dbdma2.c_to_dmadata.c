
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct au1xpsc_audio_dmadata {int dummy; } ;


 int DRV_NAME ;
 struct au1xpsc_audio_dmadata* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static inline struct au1xpsc_audio_dmadata *to_dmadata(struct snd_pcm_substream *ss)
{
 struct snd_soc_pcm_runtime *rtd = ss->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct au1xpsc_audio_dmadata *pcd = snd_soc_component_get_drvdata(component);
 return &pcd[ss->stream];
}
