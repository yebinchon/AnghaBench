
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {int component; } ;


 int AUDIO_MUTE_MSK ;
 int CODEC_MUTE_VAL ;
 int STA529_FFXCFG0 ;
 int snd_soc_component_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sta529_mute(struct snd_soc_dai *dai, int mute)
{
 u8 val = 0;

 if (mute)
  val |= CODEC_MUTE_VAL;

 snd_soc_component_update_bits(dai->component, STA529_FFXCFG0, AUDIO_MUTE_MSK, val);

 return 0;
}
