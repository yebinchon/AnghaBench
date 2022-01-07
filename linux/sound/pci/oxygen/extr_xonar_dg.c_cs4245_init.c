
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; struct dg* model_data; } ;
struct dg {int* cs4245_shadow; } ;


 size_t CS4245_ADC_CTRL ;
 int CS4245_ADC_DIF_LJUST ;
 int CS4245_ADC_FM_SINGLE ;
 size_t CS4245_ANALOG_IN ;
 int CS4245_ASYNCH ;
 int CS4245_A_OUT_SEL_DAC ;
 size_t CS4245_DAC_A_CTRL ;
 size_t CS4245_DAC_B_CTRL ;
 size_t CS4245_DAC_CTRL_1 ;
 size_t CS4245_DAC_CTRL_2 ;
 int CS4245_DAC_DIF_LJUST ;
 int CS4245_DAC_FM_SINGLE ;
 int CS4245_DAC_SOFT ;
 int CS4245_DAC_ZERO ;
 int CS4245_INVERT_DAC ;
 int CS4245_LOAD_FROM_SHADOW ;
 size_t CS4245_PGA_A_CTRL ;
 size_t CS4245_PGA_B_CTRL ;
 int CS4245_PGA_SOFT ;
 int CS4245_PGA_ZERO ;
 size_t CS4245_POWER_CTRL ;
 int CS4245_SAVE_TO_SHADOW ;
 size_t CS4245_SIGNAL_SEL ;
 int cs4245_shadow_control (struct oxygen*,int ) ;
 int snd_component_add (int ,char*) ;

__attribute__((used)) static void cs4245_init(struct oxygen *chip)
{
 struct dg *data = chip->model_data;


 cs4245_shadow_control(chip, CS4245_SAVE_TO_SHADOW);






 data->cs4245_shadow[CS4245_POWER_CTRL] = 0;
 data->cs4245_shadow[CS4245_SIGNAL_SEL] =
  CS4245_A_OUT_SEL_DAC | CS4245_ASYNCH;
 data->cs4245_shadow[CS4245_DAC_CTRL_1] =
  CS4245_DAC_FM_SINGLE | CS4245_DAC_DIF_LJUST;
 data->cs4245_shadow[CS4245_DAC_CTRL_2] =
  CS4245_DAC_SOFT | CS4245_DAC_ZERO | CS4245_INVERT_DAC;
 data->cs4245_shadow[CS4245_ADC_CTRL] =
  CS4245_ADC_FM_SINGLE | CS4245_ADC_DIF_LJUST;
 data->cs4245_shadow[CS4245_ANALOG_IN] =
  CS4245_PGA_SOFT | CS4245_PGA_ZERO;
 data->cs4245_shadow[CS4245_PGA_B_CTRL] = 0;
 data->cs4245_shadow[CS4245_PGA_A_CTRL] = 0;
 data->cs4245_shadow[CS4245_DAC_A_CTRL] = 8;
 data->cs4245_shadow[CS4245_DAC_B_CTRL] = 8;

 cs4245_shadow_control(chip, CS4245_LOAD_FROM_SHADOW);
 snd_component_add(chip->card, "CS4245");
}
