
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct echoaudio {int input_clock; TYPE_2__* card; int digital_mode; int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int status_clocks; int control_register; } ;


 int DIGITAL_MODE_ADAT ;
 int EAGAIN ;




 int EINVAL ;
 int GML_ADAT_CLOCK ;
 int GML_CLOCK_CLEAR_MASK ;
 int GML_CLOCK_DETECT_BIT_WORD96 ;
 int GML_DOUBLE_SPEED_MODE ;
 int GML_SPDIF_CLOCK ;
 int GML_WORD_CLOCK ;
 int dev_err (int ,char*,int) ;
 int le32_to_cpu (int ) ;
 int set_sample_rate (struct echoaudio*,int ) ;
 int write_control_reg (struct echoaudio*,int,int) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock)
{
 u32 control_reg, clocks_from_dsp;


 control_reg = le32_to_cpu(chip->comm_page->control_register) &
  GML_CLOCK_CLEAR_MASK;
 clocks_from_dsp = le32_to_cpu(chip->comm_page->status_clocks);


 switch (clock) {
 case 130:
  chip->input_clock = 130;
  return set_sample_rate(chip, chip->sample_rate);
 case 129:
  if (chip->digital_mode == DIGITAL_MODE_ADAT)
   return -EAGAIN;
  control_reg |= GML_SPDIF_CLOCK;

  control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 case 128:
  control_reg |= GML_WORD_CLOCK;
  if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_WORD96)
   control_reg |= GML_DOUBLE_SPEED_MODE;
  else
   control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 case 131:
  if (chip->digital_mode != DIGITAL_MODE_ADAT)
   return -EAGAIN;
  control_reg |= GML_ADAT_CLOCK;
  control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 default:
  dev_err(chip->card->dev,
   "Input clock 0x%x not supported for Layla24\n", clock);
  return -EINVAL;
 }

 chip->input_clock = clock;
 return write_control_reg(chip, control_reg, 1);
}
