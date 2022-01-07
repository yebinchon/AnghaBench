
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int PCM3168A_RST_SMODE ;

__attribute__((used)) static bool pcm3168a_readable_register(struct device *dev, unsigned int reg)
{
 if (reg >= PCM3168A_RST_SMODE)
  return 1;
 else
  return 0;
}
