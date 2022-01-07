
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int SSM2602_RESET ;

__attribute__((used)) static bool ssm2602_register_volatile(struct device *dev, unsigned int reg)
{
 return reg == SSM2602_RESET;
}
