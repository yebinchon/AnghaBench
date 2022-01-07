
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int ARIZONA_IN1L_CONTROL ;
 unsigned int ARIZONA_IN1_MODE_MASK ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,unsigned int) ;

bool arizona_input_analog(struct snd_soc_component *component, int shift)
{
 unsigned int reg = ARIZONA_IN1L_CONTROL + ((shift / 2) * 8);
 unsigned int val = snd_soc_component_read32(component, reg);

 return !(val & ARIZONA_IN1_MODE_MASK);
}
