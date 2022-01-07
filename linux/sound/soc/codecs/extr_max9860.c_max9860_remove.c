
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max9860_priv {int dvddio; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 struct max9860_priv* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int max9860_remove(struct i2c_client *i2c)
{
 struct device *dev = &i2c->dev;
 struct max9860_priv *max9860 = dev_get_drvdata(dev);

 pm_runtime_disable(dev);
 regulator_disable(max9860->dvddio);
 return 0;
}
