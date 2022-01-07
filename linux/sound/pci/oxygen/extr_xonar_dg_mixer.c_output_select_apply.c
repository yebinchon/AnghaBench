
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {struct dg* model_data; } ;
struct dg {scalar_t__ output_sel; int * cs4245_shadow; } ;


 int CS4245_A_OUT_SEL_DAC ;
 int CS4245_A_OUT_SEL_MASK ;
 size_t CS4245_SIGNAL_SEL ;
 int GPIO_HP_REAR ;
 int OXYGEN_GPIO_DATA ;
 scalar_t__ PLAYBACK_DST_HP ;
 scalar_t__ PLAYBACK_DST_HP_FP ;
 int cs4245_write_spi (struct oxygen*,size_t) ;
 int oxygen_clear_bits8 (struct oxygen*,int ,int ) ;
 int oxygen_set_bits8 (struct oxygen*,int ,int ) ;

__attribute__((used)) static int output_select_apply(struct oxygen *chip)
{
 struct dg *data = chip->model_data;

 data->cs4245_shadow[CS4245_SIGNAL_SEL] &= ~CS4245_A_OUT_SEL_MASK;
 if (data->output_sel == PLAYBACK_DST_HP) {

  oxygen_set_bits8(chip, OXYGEN_GPIO_DATA, GPIO_HP_REAR);
 } else if (data->output_sel == PLAYBACK_DST_HP_FP) {




  oxygen_clear_bits8(chip, OXYGEN_GPIO_DATA, GPIO_HP_REAR);
  data->cs4245_shadow[CS4245_SIGNAL_SEL] |= CS4245_A_OUT_SEL_DAC;
 } else {




  oxygen_clear_bits8(chip, OXYGEN_GPIO_DATA, GPIO_HP_REAR);
 }
 return cs4245_write_spi(chip, CS4245_SIGNAL_SEL);
}
