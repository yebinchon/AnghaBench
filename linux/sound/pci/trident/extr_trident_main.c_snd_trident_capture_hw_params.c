
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int snd_trident_allocate_pcm_mem (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int snd_trident_capture_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 return snd_trident_allocate_pcm_mem(substream, hw_params);
}
