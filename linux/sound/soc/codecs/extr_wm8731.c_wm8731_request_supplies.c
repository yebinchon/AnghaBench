
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wm8731_priv {TYPE_1__* supplies; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_err (struct device*,char*,int) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int * wm8731_supply_names ;

__attribute__((used)) static int wm8731_request_supplies(struct device *dev,
  struct wm8731_priv *wm8731)
{
 int ret = 0, i;

 for (i = 0; i < ARRAY_SIZE(wm8731->supplies); i++)
  wm8731->supplies[i].supply = wm8731_supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(wm8731->supplies),
     wm8731->supplies);
 if (ret != 0) {
  dev_err(dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(wm8731->supplies),
        wm8731->supplies);
 if (ret != 0) {
  dev_err(dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 return 0;
}
