
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int reset_gpio; int supplies; struct device* dev; } ;
struct device {int dummy; } ;


 int WCD9335_MAX_SUPPLY ;
 int dev_err (struct device*,char*,int) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int wcd9335_power_on_reset(struct wcd9335_codec *wcd)
{
 struct device *dev = wcd->dev;
 int ret;

 ret = regulator_bulk_enable(WCD9335_MAX_SUPPLY, wcd->supplies);
 if (ret) {
  dev_err(dev, "Failed to get supplies: err = %d\n", ret);
  return ret;
 }
 usleep_range(600, 650);

 gpio_direction_output(wcd->reset_gpio, 0);
 msleep(20);
 gpio_set_value(wcd->reset_gpio, 1);
 msleep(20);

 return 0;
}
