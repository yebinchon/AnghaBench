
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




 unsigned int PCM3168A_RST_SMODE ;

__attribute__((used)) static bool pcm3168a_writeable_register(struct device *dev, unsigned int reg)
{
 if (reg < PCM3168A_RST_SMODE)
  return 0;

 switch (reg) {
 case 128:
 case 129:
  return 0;
 default:
  return 1;
 }
}
