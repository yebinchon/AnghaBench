
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tlv320dac33_priv {size_t* reg_cache; } ;
struct snd_soc_component {int dummy; } ;


 size_t DAC33_CACHEREGNUM ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static inline void dac33_write_reg_cache(struct snd_soc_component *component,
      u8 reg, u8 value)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 u8 *cache = dac33->reg_cache;
 if (reg >= DAC33_CACHEREGNUM)
  return;

 cache[reg] = value;
}
