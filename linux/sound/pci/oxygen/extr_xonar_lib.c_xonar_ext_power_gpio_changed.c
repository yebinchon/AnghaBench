
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xonar_generic {int ext_power_bit; int has_power; int ext_power_reg; } ;
struct oxygen {TYPE_1__* card; struct xonar_generic* model_data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_crit (int ,char*) ;
 int dev_notice (int ,char*) ;
 int oxygen_read8 (struct oxygen*,int ) ;

__attribute__((used)) static void xonar_ext_power_gpio_changed(struct oxygen *chip)
{
 struct xonar_generic *data = chip->model_data;
 u8 has_power;

 has_power = !!(oxygen_read8(chip, data->ext_power_reg)
         & data->ext_power_bit);
 if (has_power != data->has_power) {
  data->has_power = has_power;
  if (has_power) {
   dev_notice(chip->card->dev, "power restored\n");
  } else {
   dev_crit(chip->card->dev,
       "Hey! Don't unplug the power cable!\n");

  }
 }
}
