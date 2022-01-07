
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int SGTL5000_CHIP_ANA_CTRL ;
 int SGTL5000_HP_SEL_MASK ;
 int SGTL5000_HP_SEL_SHIFT ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static inline int hp_sel_input(struct snd_soc_component *component)
{
 return (snd_soc_component_read32(component, SGTL5000_CHIP_ANA_CTRL) &
  SGTL5000_HP_SEL_MASK) >> SGTL5000_HP_SEL_SHIFT;
}
