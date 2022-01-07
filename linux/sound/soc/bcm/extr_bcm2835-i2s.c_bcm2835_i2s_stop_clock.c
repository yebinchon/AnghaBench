
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_i2s_dev {int clk_prepared; int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void bcm2835_i2s_stop_clock(struct bcm2835_i2s_dev *dev)
{
 if (dev->clk_prepared)
  clk_disable_unprepare(dev->clk);
 dev->clk_prepared = 0;
}
