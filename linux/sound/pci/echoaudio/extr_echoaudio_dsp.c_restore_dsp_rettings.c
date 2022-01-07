
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {int output_clock; int input_clock; int phantom_power; int professional_spdif; int digital_mode; scalar_t__ meters_enabled; int sample_rate; int * input_gain; int ** monitor_gain; int ** vmixer_gain; int * output_gain; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int handshake; int gd_spdif_status; int gd_clock_state; } ;


 int DSP_VC_METERS_ON ;
 int DSP_VC_UPDATE_FLAGS ;
 int EIO ;
 int GD_CLOCK_UNDEF ;
 int GD_SPDIF_STATUS_UNDEF ;
 int check_asic_status (struct echoaudio*) ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int) ;
 int num_busses_in (struct echoaudio*) ;
 int num_busses_out (struct echoaudio*) ;
 int num_pipes_out (struct echoaudio*) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ set_digital_mode (struct echoaudio*,int ) ;
 scalar_t__ set_input_clock (struct echoaudio*,int ) ;
 int set_input_gain (struct echoaudio*,int,int ) ;
 int set_monitor_gain (struct echoaudio*,int,int,int ) ;
 scalar_t__ set_output_clock (struct echoaudio*,int ) ;
 int set_output_gain (struct echoaudio*,int,int ) ;
 scalar_t__ set_phantom_power (struct echoaudio*,int ) ;
 scalar_t__ set_professional_spdif (struct echoaudio*,int ) ;
 int set_sample_rate (struct echoaudio*,int ) ;
 int set_vmixer_gain (struct echoaudio*,int,int,int ) ;
 int update_input_line_level (struct echoaudio*) ;
 int update_output_line_level (struct echoaudio*) ;
 scalar_t__ update_vmixer_level (struct echoaudio*) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int restore_dsp_rettings(struct echoaudio *chip)
{
 int i, o, err;

 if ((err = check_asic_status(chip)) < 0)
  return err;


 chip->comm_page->gd_clock_state = GD_CLOCK_UNDEF;
 chip->comm_page->gd_spdif_status = GD_SPDIF_STATUS_UNDEF;
 chip->comm_page->handshake = cpu_to_le32(0xffffffff);


 for (i = 0; i < num_busses_out(chip); i++) {
  err = set_output_gain(chip, i, chip->output_gain[i]);
  if (err < 0)
   return err;
 }
 err = update_output_line_level(chip);
 if (err < 0)
  return err;

 err = update_input_line_level(chip);
 if (err < 0)
  return err;

 err = set_sample_rate(chip, chip->sample_rate);
 if (err < 0)
  return err;

 if (chip->meters_enabled) {
  err = send_vector(chip, DSP_VC_METERS_ON);
  if (err < 0)
   return err;
 }
 if (wait_handshake(chip) < 0)
  return -EIO;
 clear_handshake(chip);
 if (send_vector(chip, DSP_VC_UPDATE_FLAGS) < 0)
  return -EIO;

 return 0;
}
