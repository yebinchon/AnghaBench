
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l3_pins {int setmode; int gpio_mode; int setclk; int gpio_clk; int setdat; int gpio_data; int use_gpios; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int GPIOF_OUT_INIT_LOW ;
 int devm_gpio_request_one (struct device*,int ,int ,char*) ;
 int l3_set_clk ;
 int l3_set_data ;
 int l3_set_mode ;

int l3_set_gpio_ops(struct device *dev, struct l3_pins *adap)
{
 int ret;

 if (!adap->use_gpios)
  return -EINVAL;

 ret = devm_gpio_request_one(dev, adap->gpio_data,
    GPIOF_OUT_INIT_LOW, "l3_data");
 if (ret < 0)
  return ret;
 adap->setdat = l3_set_data;

 ret = devm_gpio_request_one(dev, adap->gpio_clk,
    GPIOF_OUT_INIT_LOW, "l3_clk");
 if (ret < 0)
  return ret;
 adap->setclk = l3_set_clk;

 ret = devm_gpio_request_one(dev, adap->gpio_mode,
    GPIOF_OUT_INIT_LOW, "l3_mode");
 if (ret < 0)
  return ret;
 adap->setmode = l3_set_mode;

 return 0;
}
