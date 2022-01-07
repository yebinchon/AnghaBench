
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int hw_ptr_interrupt; } ;
typedef int snd_pcm_uframes_t ;



__attribute__((used)) static inline
snd_pcm_uframes_t get_hw_ptr_period(struct snd_pcm_runtime *runtime)
{
 return runtime->hw_ptr_interrupt;
}
