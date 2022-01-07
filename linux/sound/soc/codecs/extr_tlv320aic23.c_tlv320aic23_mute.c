
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int TLV320AIC23_DACM_MUTE ;
 int TLV320AIC23_DIGT ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int tlv320aic23_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 u16 reg;

 reg = snd_soc_component_read32(component, TLV320AIC23_DIGT);
 if (mute)
  reg |= TLV320AIC23_DACM_MUTE;

 else
  reg &= ~TLV320AIC23_DACM_MUTE;

 snd_soc_component_write(component, TLV320AIC23_DIGT, reg);

 return 0;
}
