
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {scalar_t__ clk_dev; } ;


 int platform_device_unregister (scalar_t__) ;

__attribute__((used)) static void skl_clock_device_unregister(struct skl_dev *skl)
{
 if (skl->clk_dev)
  platform_device_unregister(skl->clk_dev);
}
