
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool pcm1681_accessible_reg(struct device *dev, unsigned int reg)
{
 return !((reg == 0x00) || (reg == 0x0f));
}
