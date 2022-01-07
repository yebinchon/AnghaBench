
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int PCM3060_REG64 ;

__attribute__((used)) static bool pcm3060_reg_writeable(struct device *dev, unsigned int reg)
{
 return (reg >= PCM3060_REG64);
}
