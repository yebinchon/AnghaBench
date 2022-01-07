
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int component; } ;


 int EIO ;
 int snd_soc_component_update_bits (int ,int,unsigned int,unsigned int) ;

__attribute__((used)) static int soc_dapm_update_bits(struct snd_soc_dapm_context *dapm,
 int reg, unsigned int mask, unsigned int value)
{
 if (!dapm->component)
  return -EIO;
 return snd_soc_component_update_bits(dapm->component, reg,
          mask, value);
}
