
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int output_enable_bit; } ;
struct xonar_pcm179x {int dacs; int h6; int hp_gain_offset; TYPE_1__ generic; } ;
struct TYPE_4__ {int dac_channels_mixer; } ;
struct oxygen {int card; TYPE_2__ model; struct xonar_pcm179x* model_data; } ;


 int GPIO_INPUT_ROUTE ;
 int GPIO_ST_HP ;
 int GPIO_ST_HP_REAR ;
 int GPIO_ST_MAGIC ;
 int GPIO_ST_OUTPUT_ENABLE ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int) ;
 int pcm1796_init (struct oxygen*) ;
 int snd_component_add (int ,char*) ;
 int xonar_enable_output (struct oxygen*) ;
 int xonar_init_cs53x1 (struct oxygen*) ;

__attribute__((used)) static void xonar_st_init_common(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;

 data->generic.output_enable_bit = GPIO_ST_OUTPUT_ENABLE;
 data->dacs = chip->model.dac_channels_mixer / 2;
 data->h6 = chip->model.dac_channels_mixer > 2;
 data->hp_gain_offset = 2*-18;

 pcm1796_init(chip);

 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL,
     GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR |
     GPIO_ST_MAGIC | GPIO_ST_HP);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA,
       GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR | GPIO_ST_HP);

 xonar_init_cs53x1(chip);
 xonar_enable_output(chip);

 snd_component_add(chip->card, "PCM1792A");
 snd_component_add(chip->card, "CS5381");
}
