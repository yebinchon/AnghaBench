
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int CS4271_CHIPID ;

__attribute__((used)) static bool cs4271_volatile_reg(struct device *dev, unsigned int reg)
{
 return reg == CS4271_CHIPID;
}
