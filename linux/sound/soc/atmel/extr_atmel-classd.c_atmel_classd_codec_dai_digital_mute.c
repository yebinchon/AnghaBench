
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CLASSD_MR ;
 int CLASSD_MR_LMUTE_MASK ;
 int CLASSD_MR_RMUTE_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int atmel_classd_codec_dai_digital_mute(struct snd_soc_dai *codec_dai,
 int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 u32 mask, val;

 mask = CLASSD_MR_LMUTE_MASK | CLASSD_MR_RMUTE_MASK;

 if (mute)
  val = mask;
 else
  val = 0;

 snd_soc_component_update_bits(component, CLASSD_MR, mask, val);

 return 0;
}
