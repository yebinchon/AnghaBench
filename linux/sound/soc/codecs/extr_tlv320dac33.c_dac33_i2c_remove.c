
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {scalar_t__ power_gpio; int component; int chip_power; } ;
struct i2c_client {int dummy; } ;


 int dac33_hard_power (int ,int ) ;
 int gpio_free (scalar_t__) ;
 struct tlv320dac33_priv* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int dac33_i2c_remove(struct i2c_client *client)
{
 struct tlv320dac33_priv *dac33 = i2c_get_clientdata(client);

 if (unlikely(dac33->chip_power))
  dac33_hard_power(dac33->component, 0);

 if (dac33->power_gpio >= 0)
  gpio_free(dac33->power_gpio);

 return 0;
}
