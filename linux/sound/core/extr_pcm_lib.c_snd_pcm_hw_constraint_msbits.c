
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,unsigned int,int,int ,void*,int ,int) ;
 int snd_pcm_hw_rule_msbits ;

int snd_pcm_hw_constraint_msbits(struct snd_pcm_runtime *runtime,
     unsigned int cond,
     unsigned int width,
     unsigned int msbits)
{
 unsigned long l = (msbits << 16) | width;
 return snd_pcm_hw_rule_add(runtime, cond, -1,
        snd_pcm_hw_rule_msbits,
        (void*) l,
        SNDRV_PCM_HW_PARAM_SAMPLE_BITS, -1);
}
