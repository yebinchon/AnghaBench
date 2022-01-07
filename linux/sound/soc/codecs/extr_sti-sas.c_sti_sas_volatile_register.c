
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int STIH407_AUDIO_GLUE_CTRL ;

__attribute__((used)) static bool sti_sas_volatile_register(struct device *dev, unsigned int reg)
{
 if (reg == STIH407_AUDIO_GLUE_CTRL)
  return 1;

 return 0;
}
