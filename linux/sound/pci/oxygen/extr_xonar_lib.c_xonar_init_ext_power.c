
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xonar_generic {int ext_power_bit; int has_power; int ext_power_reg; int ext_power_int_reg; } ;
struct TYPE_2__ {int gpio_changed; } ;
struct oxygen {TYPE_1__ model; int interrupt_mask; struct xonar_generic* model_data; } ;


 int OXYGEN_INT_GPIO ;
 int oxygen_read8 (struct oxygen*,int ) ;
 int oxygen_set_bits8 (struct oxygen*,int ,int) ;
 int xonar_ext_power_gpio_changed ;

void xonar_init_ext_power(struct oxygen *chip)
{
 struct xonar_generic *data = chip->model_data;

 oxygen_set_bits8(chip, data->ext_power_int_reg,
    data->ext_power_bit);
 chip->interrupt_mask |= OXYGEN_INT_GPIO;
 chip->model.gpio_changed = xonar_ext_power_gpio_changed;
 data->has_power = !!(oxygen_read8(chip, data->ext_power_reg)
        & data->ext_power_bit);
}
