
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int TAS5086_DEV_ID ;
 scalar_t__ tas5086_accessible_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool tas5086_writeable_reg(struct device *dev, unsigned int reg)
{
 return tas5086_accessible_reg(dev, reg) && (reg != TAS5086_DEV_ID);
}
