
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdsp {int control_register; int io_type; int system_sample_rate; scalar_t__ capture_pid; scalar_t__ playback_pid; int firmware_rev; int channel_map; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;



 int EBUSY ;
 int EINVAL ;


 scalar_t__ HDSP_AUTOSYNC_FROM_ADAT1 ;
 int HDSP_ClockModeMaster ;
 int HDSP_Frequency128KHz ;
 int HDSP_Frequency176_4KHz ;
 int HDSP_Frequency192KHz ;
 int HDSP_Frequency32KHz ;
 int HDSP_Frequency44_1KHz ;
 int HDSP_Frequency48KHz ;
 int HDSP_Frequency64KHz ;
 int HDSP_Frequency88_2KHz ;
 int HDSP_Frequency96KHz ;
 int HDSP_FrequencyMask ;
 int HDSP_controlRegister ;


 int channel_map_H9632_ds ;
 int channel_map_H9632_qs ;
 int channel_map_H9632_ss ;
 int channel_map_df_ss ;
 int channel_map_ds ;
 int channel_map_mf_ss ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ hdsp_autosync_ref (struct hdsp*) ;
 int hdsp_external_sample_rate (struct hdsp*) ;
 int hdsp_set_dds_value (struct hdsp*,int) ;
 int hdsp_spdif_sample_rate (struct hdsp*) ;
 int hdsp_write (struct hdsp*,int ,int) ;

__attribute__((used)) static int hdsp_set_rate(struct hdsp *hdsp, int rate, int called_internally)
{
 int reject_if_open = 0;
 int current_rate;
 int rate_bits;






 if (!(hdsp->control_register & HDSP_ClockModeMaster)) {
  if (called_internally) {

   dev_err(hdsp->card->dev,
    "device is not running as a clock master: cannot set sample rate.\n");
   return -1;
  } else {

   int external_freq = hdsp_external_sample_rate(hdsp);
   int spdif_freq = hdsp_spdif_sample_rate(hdsp);

   if ((spdif_freq == external_freq*2) && (hdsp_autosync_ref(hdsp) >= HDSP_AUTOSYNC_FROM_ADAT1))
    dev_info(hdsp->card->dev,
      "Detected ADAT in double speed mode\n");
   else if (hdsp->io_type == 131 && (spdif_freq == external_freq*4) && (hdsp_autosync_ref(hdsp) >= HDSP_AUTOSYNC_FROM_ADAT1))
    dev_info(hdsp->card->dev,
      "Detected ADAT in quad speed mode\n");
   else if (rate != external_freq) {
    dev_info(hdsp->card->dev,
      "No AutoSync source for requested rate\n");
    return -1;
   }
  }
 }

 current_rate = hdsp->system_sample_rate;
 if (rate > 96000 && hdsp->io_type != 131)
  return -EINVAL;

 switch (rate) {
 case 32000:
  if (current_rate > 48000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency32KHz;
  break;
 case 44100:
  if (current_rate > 48000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency44_1KHz;
  break;
 case 48000:
  if (current_rate > 48000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency48KHz;
  break;
 case 64000:
  if (current_rate <= 48000 || current_rate > 96000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency64KHz;
  break;
 case 88200:
  if (current_rate <= 48000 || current_rate > 96000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency88_2KHz;
  break;
 case 96000:
  if (current_rate <= 48000 || current_rate > 96000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency96KHz;
  break;
 case 128000:
  if (current_rate < 128000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency128KHz;
  break;
 case 176400:
  if (current_rate < 128000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency176_4KHz;
  break;
 case 192000:
  if (current_rate < 128000)
   reject_if_open = 1;
  rate_bits = HDSP_Frequency192KHz;
  break;
 default:
  return -EINVAL;
 }

 if (reject_if_open && (hdsp->capture_pid >= 0 || hdsp->playback_pid >= 0)) {
  dev_warn(hdsp->card->dev,
    "cannot change speed mode (capture PID = %d, playback PID = %d)\n",
       hdsp->capture_pid,
       hdsp->playback_pid);
  return -EBUSY;
 }

 hdsp->control_register &= ~HDSP_FrequencyMask;
 hdsp->control_register |= rate_bits;
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);


 if (hdsp->io_type == 131 && hdsp->firmware_rev >= 152)
  hdsp_set_dds_value(hdsp, rate);

 if (rate >= 128000) {
  hdsp->channel_map = channel_map_H9632_qs;
 } else if (rate > 48000) {
  if (hdsp->io_type == 131)
   hdsp->channel_map = channel_map_H9632_ds;
  else
   hdsp->channel_map = channel_map_ds;
 } else {
  switch (hdsp->io_type) {
  case 128:
  case 129:
   hdsp->channel_map = channel_map_mf_ss;
   break;
  case 132:
  case 130:
   hdsp->channel_map = channel_map_df_ss;
   break;
  case 131:
   hdsp->channel_map = channel_map_H9632_ss;
   break;
  default:

   break;
  }
 }

 hdsp->system_sample_rate = rate;

 return 0;
}
