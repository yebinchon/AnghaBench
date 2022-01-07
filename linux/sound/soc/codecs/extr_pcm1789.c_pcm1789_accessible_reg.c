
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int PCM1789_DAC_VOL_RIGHT ;
 unsigned int PCM1789_MUTE_CONTROL ;

__attribute__((used)) static bool pcm1789_accessible_reg(struct device *dev, unsigned int reg)
{
 return reg >= PCM1789_MUTE_CONTROL && reg <= PCM1789_DAC_VOL_RIGHT;
}
