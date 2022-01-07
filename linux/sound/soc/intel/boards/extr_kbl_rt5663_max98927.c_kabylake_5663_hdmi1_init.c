
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;


 int KBL_DPCM_AUDIO_5663_HDMI1_PB ;
 int kabylake_hdmi_init (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int kabylake_5663_hdmi1_init(struct snd_soc_pcm_runtime *rtd)
{
 return kabylake_hdmi_init(rtd, KBL_DPCM_AUDIO_5663_HDMI1_PB);
}
