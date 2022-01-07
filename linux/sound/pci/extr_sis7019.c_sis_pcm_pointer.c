
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct voice {scalar_t__ ctrl_base; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct voice* private_data; } ;
typedef int snd_pcm_uframes_t ;


 scalar_t__ SIS_PLAY_DMA_FORMAT_CSO ;
 int readl (scalar_t__) ;

__attribute__((used)) static snd_pcm_uframes_t sis_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct voice *voice = runtime->private_data;
 u32 cso;

 cso = readl(voice->ctrl_base + SIS_PLAY_DMA_FORMAT_CSO);
 cso &= 0xffff;
 return cso;
}
