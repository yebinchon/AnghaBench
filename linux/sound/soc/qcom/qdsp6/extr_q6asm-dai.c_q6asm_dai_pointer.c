
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct q6asm_dai_rtd* private_data; } ;
struct q6asm_dai_rtd {scalar_t__ pcm_irq_pos; scalar_t__ pcm_size; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (struct snd_pcm_runtime*,scalar_t__) ;

__attribute__((used)) static snd_pcm_uframes_t q6asm_dai_pointer(struct snd_pcm_substream *substream)
{

 struct snd_pcm_runtime *runtime = substream->runtime;
 struct q6asm_dai_rtd *prtd = runtime->private_data;

 if (prtd->pcm_irq_pos >= prtd->pcm_size)
  prtd->pcm_irq_pos = 0;

 return bytes_to_frames(runtime, (prtd->pcm_irq_pos));
}
