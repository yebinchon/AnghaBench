
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int CS4270_CHIPID ;
 unsigned int CS4270_FIRSTREG ;
 unsigned int CS4270_LASTREG ;

__attribute__((used)) static bool cs4270_reg_is_volatile(struct device *dev, unsigned int reg)
{

 if ((reg < CS4270_FIRSTREG) || (reg > CS4270_LASTREG))
  return 1;

 return reg == CS4270_CHIPID;
}
