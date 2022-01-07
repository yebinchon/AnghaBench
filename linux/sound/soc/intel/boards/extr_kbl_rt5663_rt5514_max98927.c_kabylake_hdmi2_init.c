
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;


 int KBL_DPCM_AUDIO_HDMI2_PB ;
 int kabylake_hdmi_init (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int kabylake_hdmi2_init(struct snd_soc_pcm_runtime *rtd)
{
 return kabylake_hdmi_init(rtd, KBL_DPCM_AUDIO_HDMI2_PB);
}
