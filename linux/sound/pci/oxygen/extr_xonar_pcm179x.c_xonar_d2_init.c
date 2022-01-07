
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int anti_pop_delay; int output_enable_bit; } ;
struct xonar_pcm179x {int dacs; TYPE_1__ generic; } ;
struct oxygen {int card; struct xonar_pcm179x* model_data; } ;


 int CM9780_FMIC2MIC ;
 int CM9780_JACK ;
 int GPIO_D2_ALT ;
 int GPIO_D2_OUTPUT_ENABLE ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_ac97_set_bits (struct oxygen*,int ,int ,int ) ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int ) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;
 int pcm1796_init (struct oxygen*) ;
 int snd_component_add (int ,char*) ;
 int xonar_enable_output (struct oxygen*) ;
 int xonar_init_cs53x1 (struct oxygen*) ;

__attribute__((used)) static void xonar_d2_init(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;

 data->generic.anti_pop_delay = 300;
 data->generic.output_enable_bit = GPIO_D2_OUTPUT_ENABLE;
 data->dacs = 4;

 pcm1796_init(chip);

 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL, GPIO_D2_ALT);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA, GPIO_D2_ALT);

 oxygen_ac97_set_bits(chip, 0, CM9780_JACK, CM9780_FMIC2MIC);

 xonar_init_cs53x1(chip);
 xonar_enable_output(chip);

 snd_component_add(chip->card, "PCM1796");
 snd_component_add(chip->card, "CS5381");
}
