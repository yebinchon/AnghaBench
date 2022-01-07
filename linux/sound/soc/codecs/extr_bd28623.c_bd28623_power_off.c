
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd28623_priv {int supplies; int reset_gpio; } ;


 int ARRAY_SIZE (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void bd28623_power_off(struct bd28623_priv *bd)
{
 gpiod_set_value_cansleep(bd->reset_gpio, 1);

 regulator_bulk_disable(ARRAY_SIZE(bd->supplies), bd->supplies);
}
