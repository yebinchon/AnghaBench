
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int anti_pop_delay; int output_enable_bit; } ;
struct xonar_wm87x6 {int hp_jack; TYPE_1__ generic; } ;
struct oxygen {int card; int interrupt_mask; struct xonar_wm87x6* model_data; } ;


 int GPIO_DS_HP_DETECT ;
 int GPIO_DS_INPUT_ROUTE ;
 int GPIO_DS_OUTPUT_ENABLE ;
 int GPIO_DS_OUTPUT_FRONTLR ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int OXYGEN_GPIO_INTERRUPT_MASK ;
 int OXYGEN_INT_GPIO ;
 int SND_JACK_HEADPHONE ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int) ;
 int snd_component_add (int ,char*) ;
 int snd_jack_new (int ,char*,int ,int *,int,int) ;
 int wm8766_init (struct oxygen*) ;
 int wm8776_init (struct oxygen*) ;
 int xonar_ds_handle_hp_jack (struct oxygen*) ;
 int xonar_enable_output (struct oxygen*) ;

__attribute__((used)) static void xonar_ds_init(struct oxygen *chip)
{
 struct xonar_wm87x6 *data = chip->model_data;

 data->generic.anti_pop_delay = 300;
 data->generic.output_enable_bit = GPIO_DS_OUTPUT_ENABLE;

 wm8776_init(chip);
 wm8766_init(chip);

 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL,
     GPIO_DS_INPUT_ROUTE | GPIO_DS_OUTPUT_FRONTLR);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_CONTROL,
       GPIO_DS_HP_DETECT);
 oxygen_set_bits16(chip, OXYGEN_GPIO_DATA, GPIO_DS_INPUT_ROUTE);
 oxygen_set_bits16(chip, OXYGEN_GPIO_INTERRUPT_MASK, GPIO_DS_HP_DETECT);
 chip->interrupt_mask |= OXYGEN_INT_GPIO;

 xonar_enable_output(chip);

 snd_jack_new(chip->card, "Headphone",
       SND_JACK_HEADPHONE, &data->hp_jack, 0, 0);
 xonar_ds_handle_hp_jack(chip);

 snd_component_add(chip->card, "WM8776");
 snd_component_add(chip->card, "WM8766");
}
