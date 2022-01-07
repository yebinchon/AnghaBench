
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool pcm179x_accessible_reg(struct device *dev, unsigned int reg)
{
 return reg >= 0x10 && reg <= 0x17;
}
