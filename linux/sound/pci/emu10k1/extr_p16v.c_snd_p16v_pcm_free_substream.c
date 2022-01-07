
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int dummy; } ;


 int kfree (struct snd_emu10k1_pcm*) ;

__attribute__((used)) static void snd_p16v_pcm_free_substream(struct snd_pcm_runtime *runtime)
{
 struct snd_emu10k1_pcm *epcm = runtime->private_data;

 kfree(epcm);
}
