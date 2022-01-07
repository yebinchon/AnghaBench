
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int rt5677_free_gpio (struct i2c_client*) ;

__attribute__((used)) static int rt5677_i2c_remove(struct i2c_client *i2c)
{
 rt5677_free_gpio(i2c);

 return 0;
}
