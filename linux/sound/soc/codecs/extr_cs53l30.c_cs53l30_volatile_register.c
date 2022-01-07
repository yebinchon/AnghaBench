
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int CS53L30_IS ;

__attribute__((used)) static bool cs53l30_volatile_register(struct device *dev, unsigned int reg)
{
 if (reg == CS53L30_IS)
  return 1;
 else
  return 0;
}
