
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {int dummy; } ;


 int kfree (struct snd_card_asihpi_pcm*) ;

__attribute__((used)) static void snd_card_asihpi_runtime_free(struct snd_pcm_runtime *runtime)
{
 struct snd_card_asihpi_pcm *dpcm = runtime->private_data;
 kfree(dpcm);
}
