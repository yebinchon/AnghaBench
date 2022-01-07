
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int TFA9879_MISC_STATUS ;

__attribute__((used)) static bool tfa9879_volatile_reg(struct device *dev, unsigned int reg)
{
 return reg == TFA9879_MISC_STATUS;
}
