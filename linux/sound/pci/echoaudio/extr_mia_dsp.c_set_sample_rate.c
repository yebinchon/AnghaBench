
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {scalar_t__ input_clock; int sample_rate; TYPE_2__* comm_page; TYPE_1__* card; } ;
struct TYPE_4__ {void* control_register; void* sample_rate; } ;
struct TYPE_3__ {int dev; } ;


 int DSP_VC_UPDATE_CLOCKS ;
 scalar_t__ ECHO_CLOCK_SPDIF ;
 int EINVAL ;
 int EIO ;
 int MIA_32000 ;
 int MIA_44100 ;
 int MIA_48000 ;
 int MIA_88200 ;
 int MIA_96000 ;
 int MIA_SPDIF ;
 int clear_handshake (struct echoaudio*) ;
 void* cpu_to_le32 (int) ;
 int dev_err (int ,char*,int) ;
 int le32_to_cpu (void*) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 u32 control_reg;

 switch (rate) {
 case 96000:
  control_reg = MIA_96000;
  break;
 case 88200:
  control_reg = MIA_88200;
  break;
 case 48000:
  control_reg = MIA_48000;
  break;
 case 44100:
  control_reg = MIA_44100;
  break;
 case 32000:
  control_reg = MIA_32000;
  break;
 default:
  dev_err(chip->card->dev,
   "set_sample_rate: %d invalid!\n", rate);
  return -EINVAL;
 }


 if (chip->input_clock == ECHO_CLOCK_SPDIF)
  control_reg |= MIA_SPDIF;


 if (control_reg != le32_to_cpu(chip->comm_page->control_register)) {
  if (wait_handshake(chip))
   return -EIO;

  chip->comm_page->sample_rate = cpu_to_le32(rate);
  chip->comm_page->control_register = cpu_to_le32(control_reg);
  chip->sample_rate = rate;

  clear_handshake(chip);
  return send_vector(chip, DSP_VC_UPDATE_CLOCKS);
 }
 return 0;
}
