
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {struct dg* model_data; } ;
struct dg {int input_sel; int output_sel; } ;


 int CAPTURE_SRC_MIC ;
 int GPIO_HP_REAR ;
 int GPIO_INPUT_ROUTE ;
 int GPIO_OUTPUT_ENABLE ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int PLAYBACK_DST_HP_FP ;
 int cs4245_init (struct oxygen*) ;
 int msleep (int) ;
 int oxygen_write16 (struct oxygen*,int ,int) ;

void dg_init(struct oxygen *chip)
{
 struct dg *data = chip->model_data;

 data->output_sel = PLAYBACK_DST_HP_FP;
 data->input_sel = CAPTURE_SRC_MIC;

 cs4245_init(chip);
 oxygen_write16(chip, OXYGEN_GPIO_CONTROL,
         GPIO_OUTPUT_ENABLE | GPIO_HP_REAR | GPIO_INPUT_ROUTE);

 msleep(2500);
 oxygen_write16(chip, OXYGEN_GPIO_DATA,
         GPIO_OUTPUT_ENABLE | GPIO_INPUT_ROUTE);
}
