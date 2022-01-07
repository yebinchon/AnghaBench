
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int pm_runtime_disable (int *) ;

__attribute__((used)) static int rt5670_i2c_remove(struct i2c_client *i2c)
{
 pm_runtime_disable(&i2c->dev);

 return 0;
}
