
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct echoaudio {int device_id; int subdevice_id; int bad_board; int asic_loaded; int input_clock_types; int clock_state; int spdif_status; int dsp_code_to_load; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ECHO_CLOCK_BIT_INTERNAL ;
 int ECHO_CLOCK_BIT_SPDIF ;
 int ENODEV ;
 int FW_GINA20_DSP ;
 int GD_CLOCK_UNDEF ;
 int GD_SPDIF_STATUS_UNDEF ;
 int GINA20 ;
 int dev_err (int ,char*) ;
 int init_dsp_comm_page (struct echoaudio*) ;
 int load_firmware (struct echoaudio*) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int init_hw(struct echoaudio *chip, u16 device_id, u16 subdevice_id)
{
 int err;

 if (snd_BUG_ON((subdevice_id & 0xfff0) != GINA20))
  return -ENODEV;

 if ((err = init_dsp_comm_page(chip))) {
  dev_err(chip->card->dev,
   "init_hw - could not initialize DSP comm page\n");
  return err;
 }

 chip->device_id = device_id;
 chip->subdevice_id = subdevice_id;
 chip->bad_board = 1;
 chip->dsp_code_to_load = FW_GINA20_DSP;
 chip->spdif_status = GD_SPDIF_STATUS_UNDEF;
 chip->clock_state = GD_CLOCK_UNDEF;


 chip->asic_loaded = 1;
 chip->input_clock_types = ECHO_CLOCK_BIT_INTERNAL |
  ECHO_CLOCK_BIT_SPDIF;

 if ((err = load_firmware(chip)) < 0)
  return err;
 chip->bad_board = 0;

 return err;
}
