
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 unsigned int ARIZONA_OUT1_MONO ;
 int ARIZONA_OUTPUT_PATH_CONFIG_1L ;
 int EINVAL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,unsigned int,unsigned int) ;

int arizona_set_output_mode(struct snd_soc_component *component, int output,
       bool diff)
{
 unsigned int reg, val;

 if (output < 1 || output > 6)
  return -EINVAL;

 reg = ARIZONA_OUTPUT_PATH_CONFIG_1L + (output - 1) * 8;

 if (diff)
  val = ARIZONA_OUT1_MONO;
 else
  val = 0;

 return snd_soc_component_update_bits(component, reg,
          ARIZONA_OUT1_MONO, val);
}
