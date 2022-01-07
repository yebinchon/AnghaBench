
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wcd9335_codec {int reset_gpio; TYPE_1__* supplies; void* native_clk; void* mclk; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {char* supply; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int WCD9335_MAX_SUPPLY ;
 int dev_err (struct device*,char*,...) ;
 void* devm_clk_get (struct device*,char*) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int regulator_bulk_get (struct device*,int ,TYPE_1__*) ;

__attribute__((used)) static int wcd9335_parse_dt(struct wcd9335_codec *wcd)
{
 struct device *dev = wcd->dev;
 struct device_node *np = dev->of_node;
 int ret;

 wcd->reset_gpio = of_get_named_gpio(np, "reset-gpios", 0);
 if (wcd->reset_gpio < 0) {
  dev_err(dev, "Reset GPIO missing from DT\n");
  return wcd->reset_gpio;
 }

 wcd->mclk = devm_clk_get(dev, "mclk");
 if (IS_ERR(wcd->mclk)) {
  dev_err(dev, "mclk not found\n");
  return PTR_ERR(wcd->mclk);
 }

 wcd->native_clk = devm_clk_get(dev, "slimbus");
 if (IS_ERR(wcd->native_clk)) {
  dev_err(dev, "slimbus clock not found\n");
  return PTR_ERR(wcd->native_clk);
 }

 wcd->supplies[0].supply = "vdd-buck";
 wcd->supplies[1].supply = "vdd-buck-sido";
 wcd->supplies[2].supply = "vdd-tx";
 wcd->supplies[3].supply = "vdd-rx";
 wcd->supplies[4].supply = "vdd-io";

 ret = regulator_bulk_get(dev, WCD9335_MAX_SUPPLY, wcd->supplies);
 if (ret) {
  dev_err(dev, "Failed to get supplies: err = %d\n", ret);
  return ret;
 }

 return 0;
}
