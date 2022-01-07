
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pcm179x_accessible_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool pcm179x_writeable_reg(struct device *dev, unsigned int reg)
{
 bool accessible;

 accessible = pcm179x_accessible_reg(dev, reg);

 return accessible && reg != 0x16 && reg != 0x17;
}
