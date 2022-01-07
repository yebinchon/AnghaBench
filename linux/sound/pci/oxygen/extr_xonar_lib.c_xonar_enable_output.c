
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_generic {int output_enable_bit; int anti_pop_delay; } ;
struct oxygen {struct xonar_generic* model_data; } ;


 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int msleep (int ) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;

void xonar_enable_output(struct oxygen *chip)
{
 struct xonar_generic *data = chip->model_data;

 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL, data->output_enable_bit);
 msleep(data->anti_pop_delay);
 oxygen_set_bits16(chip, OXYGEN_GPIO_DATA, data->output_enable_bit);
}
