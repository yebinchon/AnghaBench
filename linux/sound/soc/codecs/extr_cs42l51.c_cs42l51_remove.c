
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cs42l51_private {int supplies; int reset_gpio; } ;


 int ARRAY_SIZE (int ) ;
 struct cs42l51_private* dev_get_drvdata (struct device*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_bulk_disable (int ,int ) ;

int cs42l51_remove(struct device *dev)
{
 struct cs42l51_private *cs42l51 = dev_get_drvdata(dev);

 gpiod_set_value_cansleep(cs42l51->reset_gpio, 1);

 return regulator_bulk_disable(ARRAY_SIZE(cs42l51->supplies),
          cs42l51->supplies);
}
