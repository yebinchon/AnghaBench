
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_power_bit; int ext_power_int_reg; int ext_power_reg; } ;
struct xonar_pcm179x {TYPE_1__ generic; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int GPIO_D2X_EXT_POWER ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int OXYGEN_GPIO_INTERRUPT_MASK ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int ) ;
 int xonar_d2_init (struct oxygen*) ;
 int xonar_init_ext_power (struct oxygen*) ;

__attribute__((used)) static void xonar_d2x_init(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;

 data->generic.ext_power_reg = OXYGEN_GPIO_DATA;
 data->generic.ext_power_int_reg = OXYGEN_GPIO_INTERRUPT_MASK;
 data->generic.ext_power_bit = GPIO_D2X_EXT_POWER;
 oxygen_clear_bits16(chip, OXYGEN_GPIO_CONTROL, GPIO_D2X_EXT_POWER);
 xonar_init_ext_power(chip);
 xonar_d2_init(chip);
}
