
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int CS4270_FIRSTREG ;
 unsigned int CS4270_LASTREG ;

__attribute__((used)) static bool cs4270_reg_is_readable(struct device *dev, unsigned int reg)
{
 return (reg >= CS4270_FIRSTREG) && (reg <= CS4270_LASTREG);
}
