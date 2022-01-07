
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {struct dg* model_data; } ;
struct dg {scalar_t__ input_sel; int * cs4245_shadow; } ;


 scalar_t__ CAPTURE_SRC_FP_MIC ;
 scalar_t__ CAPTURE_SRC_LINE ;
 scalar_t__ CAPTURE_SRC_MIC ;
 size_t CS4245_ANALOG_IN ;
 int CS4245_SEL_INPUT_1 ;
 int CS4245_SEL_INPUT_2 ;
 int CS4245_SEL_INPUT_4 ;
 int CS4245_SEL_MASK ;
 int cs4245_write_spi (struct oxygen*,size_t) ;

__attribute__((used)) static int input_source_apply(struct oxygen *chip)
{
 struct dg *data = chip->model_data;

 data->cs4245_shadow[CS4245_ANALOG_IN] &= ~CS4245_SEL_MASK;
 if (data->input_sel == CAPTURE_SRC_FP_MIC)
  data->cs4245_shadow[CS4245_ANALOG_IN] |= CS4245_SEL_INPUT_2;
 else if (data->input_sel == CAPTURE_SRC_LINE)
  data->cs4245_shadow[CS4245_ANALOG_IN] |= CS4245_SEL_INPUT_4;
 else if (data->input_sel != CAPTURE_SRC_MIC)
  data->cs4245_shadow[CS4245_ANALOG_IN] |= CS4245_SEL_INPUT_1;
 return cs4245_write_spi(chip, CS4245_ANALOG_IN);
}
