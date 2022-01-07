
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;


 int simtec_audio_init (struct snd_soc_pcm_runtime*) ;

__attribute__((used)) static int simtec_tlv320aic23_init(struct snd_soc_pcm_runtime *rtd)
{
 simtec_audio_init(rtd);

 return 0;
}
