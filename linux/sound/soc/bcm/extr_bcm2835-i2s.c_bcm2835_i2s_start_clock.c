
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_i2s_dev {unsigned int fmt; int clk_prepared; int clk; } ;




 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static void bcm2835_i2s_start_clock(struct bcm2835_i2s_dev *dev)
{
 unsigned int master = dev->fmt & SND_SOC_DAIFMT_MASTER_MASK;

 if (dev->clk_prepared)
  return;

 switch (master) {
 case 128:
 case 129:
  clk_prepare_enable(dev->clk);
  dev->clk_prepared = 1;
  break;
 default:
  break;
 }
}
