
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct atmel_i2s_dev {int gclk; int dev; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_set_parent (struct clk*,int ) ;
 int dev_warn (int ,char*,int) ;
 struct clk* devm_clk_get (int ,char*) ;

__attribute__((used)) static int atmel_i2s_sama5d2_mck_init(struct atmel_i2s_dev *dev,
          struct device_node *np)
{
 struct clk *muxclk;
 int err;

 if (!dev->gclk)
  return 0;


 muxclk = devm_clk_get(dev->dev, "muxclk");
 if (IS_ERR(muxclk)) {
  err = PTR_ERR(muxclk);
  if (err == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_warn(dev->dev,
    "failed to get the I2S clock control: %d\n", err);
  return 0;
 }

 return clk_set_parent(muxclk, dev->gclk);
}
