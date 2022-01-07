
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct echoaudio {int sample_rate; int digital_mode; TYPE_2__* card; int lock; TYPE_1__* comm_page; int input_clock; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int control_register; } ;





 int E3G_ADAT_MODE ;
 int E3G_DIGITAL_MODE_CLEAR_MASK ;
 int E3G_DOUBLE_SPEED_MODE ;
 int E3G_SPDIF_OPTICAL_MODE ;
 int ECHO_CLOCK_ADAT ;
 int ECHO_CLOCK_INTERNAL ;
 int ECHO_CLOCK_SPDIF ;
 int EINVAL ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int get_frq_reg (struct echoaudio*) ;
 int le32_to_cpu (int ) ;
 int set_input_clock (struct echoaudio*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int write_control_reg (struct echoaudio*,int ,int ,int) ;

__attribute__((used)) static int dsp_set_digital_mode(struct echoaudio *chip, u8 mode)
{
 u32 control_reg;
 int err, incompatible_clock;


 incompatible_clock = 0;
 switch (mode) {
 case 129:
 case 128:
  if (chip->input_clock == ECHO_CLOCK_ADAT)
   incompatible_clock = 1;
  break;
 case 130:
  if (chip->input_clock == ECHO_CLOCK_SPDIF)
   incompatible_clock = 1;
  break;
 default:
  dev_err(chip->card->dev,
   "Digital mode not supported: %d\n", mode);
  return -EINVAL;
 }

 spin_lock_irq(&chip->lock);

 if (incompatible_clock) {
  chip->sample_rate = 48000;
  set_input_clock(chip, ECHO_CLOCK_INTERNAL);
 }


 control_reg = le32_to_cpu(chip->comm_page->control_register);
 control_reg &= E3G_DIGITAL_MODE_CLEAR_MASK;


 switch (mode) {
 case 129:
  control_reg |= E3G_SPDIF_OPTICAL_MODE;
  break;
 case 128:

  break;
 case 130:
  control_reg |= E3G_ADAT_MODE;
  control_reg &= ~E3G_DOUBLE_SPEED_MODE;
  break;
 }

 err = write_control_reg(chip, control_reg, get_frq_reg(chip), 1);
 spin_unlock_irq(&chip->lock);
 if (err < 0)
  return err;
 chip->digital_mode = mode;

 dev_dbg(chip->card->dev, "set_digital_mode(%d)\n", chip->digital_mode);
 return incompatible_clock;
}
