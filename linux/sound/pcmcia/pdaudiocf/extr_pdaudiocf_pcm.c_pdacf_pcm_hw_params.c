
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_alloc_vmalloc_32_buffer (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int pdacf_pcm_hw_params(struct snd_pcm_substream *subs,
         struct snd_pcm_hw_params *hw_params)
{
 return snd_pcm_lib_alloc_vmalloc_32_buffer
     (subs, params_buffer_bytes(hw_params));
}
