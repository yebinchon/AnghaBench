
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int anti_pop_delay; int output_enable_bit; int ext_power_bit; int ext_power_int_reg; int ext_power_reg; } ;
struct xonar_pcm179x {int has_cs2000; int dacs; int hp_gain_offset; TYPE_1__ generic; int * cs2000_regs; } ;
struct oxygen {int card; struct xonar_pcm179x* model_data; } ;


 size_t CS2000_FUN_CFG_1 ;
 int CS2000_REF_CLK_DIV_1 ;
 int GPIO_INPUT_ROUTE ;
 int GPIO_ST_HP_REAR ;
 int GPIO_ST_MAGIC ;
 int GPIO_XENSE_OUTPUT_ENABLE ;
 int GPIO_XENSE_SPEAKERS ;
 int GPI_EXT_POWER ;
 int MCLK_512 ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int OXYGEN_GPI_DATA ;
 int OXYGEN_GPI_INTERRUPT_MASK ;
 int OXYGEN_I2S_A_FORMAT ;
 int OXYGEN_I2S_BCLK_64 ;
 int OXYGEN_I2S_BITS_16 ;
 int OXYGEN_I2S_FORMAT_I2S ;
 int OXYGEN_I2S_MASTER ;
 int OXYGEN_I2S_MCLK (int ) ;
 int OXYGEN_RATE_48000 ;
 int cs2000_registers_init (struct oxygen*) ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int) ;
 int oxygen_write16 (struct oxygen*,int ,int) ;
 int pcm1796_init (struct oxygen*) ;
 int snd_component_add (int ,char*) ;
 int xonar_enable_output (struct oxygen*) ;
 int xonar_init_cs53x1 (struct oxygen*) ;
 int xonar_init_ext_power (struct oxygen*) ;
 int xonar_st_init_i2c (struct oxygen*) ;

__attribute__((used)) static void xonar_xense_init(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;

 data->generic.ext_power_reg = OXYGEN_GPI_DATA;
 data->generic.ext_power_int_reg = OXYGEN_GPI_INTERRUPT_MASK;
 data->generic.ext_power_bit = GPI_EXT_POWER;
 xonar_init_ext_power(chip);

 data->generic.anti_pop_delay = 100;
 data->has_cs2000 = 1;
 data->cs2000_regs[CS2000_FUN_CFG_1] = CS2000_REF_CLK_DIV_1;

 oxygen_write16(chip, OXYGEN_I2S_A_FORMAT,
  OXYGEN_RATE_48000 |
  OXYGEN_I2S_FORMAT_I2S |
  OXYGEN_I2S_MCLK(MCLK_512) |
  OXYGEN_I2S_BITS_16 |
  OXYGEN_I2S_MASTER |
  OXYGEN_I2S_BCLK_64);

 xonar_st_init_i2c(chip);
 cs2000_registers_init(chip);

 data->generic.output_enable_bit = GPIO_XENSE_OUTPUT_ENABLE;
 data->dacs = 1;
 data->hp_gain_offset = 2*-18;

 pcm1796_init(chip);

 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL,
  GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR |
  GPIO_ST_MAGIC | GPIO_XENSE_SPEAKERS);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA,
  GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR |
  GPIO_XENSE_SPEAKERS);

 xonar_init_cs53x1(chip);
 xonar_enable_output(chip);

 snd_component_add(chip->card, "PCM1796");
 snd_component_add(chip->card, "CS5381");
 snd_component_add(chip->card, "CS2000");
}
