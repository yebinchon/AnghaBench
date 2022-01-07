
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int * codec_dais; } ;


 int snd_soc_dai_set_tdm_slot (int ,int,int,int,int) ;

__attribute__((used)) static int skylake_ssm4567_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;


 ret = snd_soc_dai_set_tdm_slot(rtd->codec_dais[0], 0x01, 0x01, 2, 48);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_tdm_slot(rtd->codec_dais[1], 0x02, 0x02, 2, 48);
 if (ret < 0)
  return ret;

 return ret;
}
