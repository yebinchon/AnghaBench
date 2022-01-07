
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct q6asm_dai_rtd* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct q6asm_dai_rtd {int bits_per_sample; int periods; int pcm_size; } ;




 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_periods (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int q6asm_dai_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct q6asm_dai_rtd *prtd = runtime->private_data;

 prtd->pcm_size = params_buffer_bytes(params);
 prtd->periods = params_periods(params);

 switch (params_format(params)) {
 case 129:
  prtd->bits_per_sample = 16;
  break;
 case 128:
  prtd->bits_per_sample = 24;
  break;
 }

 return 0;
}
