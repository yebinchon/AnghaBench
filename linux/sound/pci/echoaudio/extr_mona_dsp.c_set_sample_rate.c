
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {scalar_t__ input_clock; int sample_rate; scalar_t__ digital_mode; scalar_t__ device_id; short asic_code; TYPE_2__* card; TYPE_1__* comm_page; int lock; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {void* sample_rate; int control_register; } ;


 scalar_t__ DEVICE_ID_56361 ;
 scalar_t__ DIGITAL_MODE_ADAT ;
 int DSP_FNC_LOAD_MONA_PCI_CARD_ASIC ;
 scalar_t__ ECHO_CLOCK_INTERNAL ;
 int EINVAL ;
 short FW_MONA_301_1_ASIC48 ;
 short FW_MONA_301_1_ASIC96 ;
 short FW_MONA_361_1_ASIC48 ;
 short FW_MONA_361_1_ASIC96 ;
 int GML_11KHZ ;
 int GML_16KHZ ;
 int GML_22KHZ ;
 int GML_32KHZ ;
 int GML_44KHZ ;
 int GML_48KHZ ;
 int GML_88KHZ ;
 int GML_8KHZ ;
 int GML_96KHZ ;
 int GML_CLOCK_CLEAR_MASK ;
 int GML_SPDIF_PRO_MODE ;
 int GML_SPDIF_RATE_CLEAR_MASK ;
 int GML_SPDIF_SAMPLE_RATE0 ;
 int GML_SPDIF_SAMPLE_RATE1 ;
 void* cpu_to_le32 (int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int le32_to_cpu (int ) ;
 int load_asic_generic (struct echoaudio*,int ,short) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int write_control_reg (struct echoaudio*,int,char) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 u32 control_reg, clock;
 short asic;
 char force_write;


 if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
  dev_dbg(chip->card->dev,
   "Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\n");

  chip->comm_page->sample_rate = cpu_to_le32(rate);
  chip->sample_rate = rate;
  return 0;
 }


 if (rate >= 88200) {
  if (chip->digital_mode == DIGITAL_MODE_ADAT)
   return -EINVAL;
  if (chip->device_id == DEVICE_ID_56361)
   asic = FW_MONA_361_1_ASIC96;
  else
   asic = FW_MONA_301_1_ASIC96;
 } else {
  if (chip->device_id == DEVICE_ID_56361)
   asic = FW_MONA_361_1_ASIC48;
  else
   asic = FW_MONA_301_1_ASIC48;
 }

 force_write = 0;
 if (asic != chip->asic_code) {
  int err;

  spin_unlock_irq(&chip->lock);
  err = load_asic_generic(chip, DSP_FNC_LOAD_MONA_PCI_CARD_ASIC,
     asic);
  spin_lock_irq(&chip->lock);

  if (err < 0)
   return err;
  chip->asic_code = asic;
  force_write = 1;
 }


 clock = 0;
 control_reg = le32_to_cpu(chip->comm_page->control_register);
 control_reg &= GML_CLOCK_CLEAR_MASK;
 control_reg &= GML_SPDIF_RATE_CLEAR_MASK;

 switch (rate) {
 case 96000:
  clock = GML_96KHZ;
  break;
 case 88200:
  clock = GML_88KHZ;
  break;
 case 48000:
  clock = GML_48KHZ | GML_SPDIF_SAMPLE_RATE1;
  break;
 case 44100:
  clock = GML_44KHZ;

  if (control_reg & GML_SPDIF_PRO_MODE)
   clock |= GML_SPDIF_SAMPLE_RATE0;
  break;
 case 32000:
  clock = GML_32KHZ | GML_SPDIF_SAMPLE_RATE0 |
   GML_SPDIF_SAMPLE_RATE1;
  break;
 case 22050:
  clock = GML_22KHZ;
  break;
 case 16000:
  clock = GML_16KHZ;
  break;
 case 11025:
  clock = GML_11KHZ;
  break;
 case 8000:
  clock = GML_8KHZ;
  break;
 default:
  dev_err(chip->card->dev,
   "set_sample_rate: %d invalid!\n", rate);
  return -EINVAL;
 }

 control_reg |= clock;

 chip->comm_page->sample_rate = cpu_to_le32(rate);
 chip->sample_rate = rate;
 dev_dbg(chip->card->dev,
  "set_sample_rate: %d clock %d\n", rate, clock);

 return write_control_reg(chip, control_reg, force_write);
}
