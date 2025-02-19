
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



 unsigned int dai_memif_rate_transform (struct device*,unsigned int) ;
 unsigned int mt8183_general_rate_transform (struct device*,unsigned int) ;

unsigned int mt8183_rate_transform(struct device *dev,
       unsigned int rate, int aud_blk)
{
 switch (aud_blk) {
 case 128:
  return dai_memif_rate_transform(dev, rate);
 default:
  return mt8183_general_rate_transform(dev, rate);
 }
}
