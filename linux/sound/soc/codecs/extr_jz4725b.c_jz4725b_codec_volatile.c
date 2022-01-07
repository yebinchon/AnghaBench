
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int JZ4725B_CODEC_REG_IFR ;

__attribute__((used)) static bool jz4725b_codec_volatile(struct device *dev, unsigned int reg)
{
 return reg == JZ4725B_CODEC_REG_IFR;
}
