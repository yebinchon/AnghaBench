
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_pcm_runtime* codec_dais; } ;


 int kfree (struct snd_soc_pcm_runtime*) ;
 int snd_soc_rtdcom_del_all (struct snd_soc_pcm_runtime*) ;

__attribute__((used)) static void soc_free_pcm_runtime(struct snd_soc_pcm_runtime *rtd)
{
 kfree(rtd->codec_dais);
 snd_soc_rtdcom_del_all(rtd);
 kfree(rtd);
}
