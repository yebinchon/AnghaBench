
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es7241_data {int reset; int m1; int m0; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void es7241_set_mode(struct es7241_data *priv, int m0, int m1)
{

 gpiod_set_value_cansleep(priv->reset, 0);


 gpiod_set_value_cansleep(priv->m0, m0);
 gpiod_set_value_cansleep(priv->m1, m1);


 gpiod_set_value_cansleep(priv->reset, 1);
}
