
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd28623_priv {int reset_gpio; int dev; int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bd28623_power_on(struct bd28623_priv *bd)
{
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(bd->supplies), bd->supplies);
 if (ret) {
  dev_err(bd->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 gpiod_set_value_cansleep(bd->reset_gpio, 0);
 usleep_range(300000, 400000);

 return 0;
}
