
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int SGTL5000_CHIP_ANA_CTRL ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static inline u16 mute_output(struct snd_soc_component *component,
         u16 mute_mask)
{
 u16 mute_reg = snd_soc_component_read32(component,
           SGTL5000_CHIP_ANA_CTRL);

 snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_CTRL,
       mute_mask, mute_mask);
 return mute_reg;
}
