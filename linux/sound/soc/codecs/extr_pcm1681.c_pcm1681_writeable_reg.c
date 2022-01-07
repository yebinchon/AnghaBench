
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int PCM1681_ZERO_DETECT_STATUS ;
 scalar_t__ pcm1681_accessible_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool pcm1681_writeable_reg(struct device *dev, unsigned int reg)
{
 return pcm1681_accessible_reg(dev, reg) &&
  (reg != PCM1681_ZERO_DETECT_STATUS);
}
