
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {scalar_t__ input_clock; int sample_rate; scalar_t__ digital_mode; TYPE_2__* card; TYPE_1__* comm_page; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {void* sample_rate; int control_register; } ;


 scalar_t__ DIGITAL_MODE_ADAT ;
 int E3G_32KHZ ;
 int E3G_44KHZ ;
 int E3G_48KHZ ;
 int E3G_88KHZ ;
 int E3G_96KHZ ;
 int E3G_CLOCK_CLEAR_MASK ;
 int E3G_CONTINUOUS_CLOCK ;
 int E3G_DOUBLE_SPEED_MODE ;
 int E3G_FREQ_REG_MAX ;
 int E3G_MAGIC_NUMBER ;
 scalar_t__ ECHO_CLOCK_INTERNAL ;
 int EINVAL ;
 void* cpu_to_le32 (int) ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_warn (int ,char*) ;
 int le32_to_cpu (int ) ;
 int set_input_clock (struct echoaudio*,scalar_t__) ;
 int set_spdif_bits (struct echoaudio*,int,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int write_control_reg (struct echoaudio*,int,int,int ) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 u32 control_reg, clock, base_rate, frq_reg;


 if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
  dev_warn(chip->card->dev,
    "Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\n");

  chip->comm_page->sample_rate = cpu_to_le32(rate);
  chip->sample_rate = rate;
  set_input_clock(chip, chip->input_clock);
  return 0;
 }

 if (snd_BUG_ON(rate >= 50000 &&
         chip->digital_mode == DIGITAL_MODE_ADAT))
  return -EINVAL;

 clock = 0;
 control_reg = le32_to_cpu(chip->comm_page->control_register);
 control_reg &= E3G_CLOCK_CLEAR_MASK;

 switch (rate) {
 case 96000:
  clock = E3G_96KHZ;
  break;
 case 88200:
  clock = E3G_88KHZ;
  break;
 case 48000:
  clock = E3G_48KHZ;
  break;
 case 44100:
  clock = E3G_44KHZ;
  break;
 case 32000:
  clock = E3G_32KHZ;
  break;
 default:
  clock = E3G_CONTINUOUS_CLOCK;
  if (rate > 50000)
   clock |= E3G_DOUBLE_SPEED_MODE;
  break;
 }

 control_reg |= clock;
 control_reg = set_spdif_bits(chip, control_reg, rate);

 base_rate = rate;
 if (base_rate > 50000)
  base_rate /= 2;
 if (base_rate < 32000)
  base_rate = 32000;

 frq_reg = E3G_MAGIC_NUMBER / base_rate - 2;
 if (frq_reg > E3G_FREQ_REG_MAX)
  frq_reg = E3G_FREQ_REG_MAX;

 chip->comm_page->sample_rate = cpu_to_le32(rate);
 chip->sample_rate = rate;
 dev_dbg(chip->card->dev,
  "SetSampleRate: %d clock %x\n", rate, control_reg);


 return write_control_reg(chip, control_reg, frq_reg, 0);
}
