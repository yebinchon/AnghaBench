
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ldo_ena; } ;
struct wm8996_priv {TYPE_1__ pdata; } ;
struct i2c_client {int dummy; } ;


 int gpio_free (scalar_t__) ;
 int gpio_set_value_cansleep (scalar_t__,int ) ;
 struct wm8996_priv* i2c_get_clientdata (struct i2c_client*) ;
 int wm8996_free_gpio (struct wm8996_priv*) ;

__attribute__((used)) static int wm8996_i2c_remove(struct i2c_client *client)
{
 struct wm8996_priv *wm8996 = i2c_get_clientdata(client);

 wm8996_free_gpio(wm8996);
 if (wm8996->pdata.ldo_ena > 0) {
  gpio_set_value_cansleep(wm8996->pdata.ldo_ena, 0);
  gpio_free(wm8996->pdata.ldo_ena);
 }

 return 0;
}
