
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pcm1789_accessible_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool pcm1789_writeable_reg(struct device *dev, unsigned int reg)
{
 return pcm1789_accessible_reg(dev, reg);
}
