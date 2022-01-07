
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int* analog_capture_volume; int mic_volume; int* analog_playback_volume; int mgr; scalar_t__* analog_playback_active; scalar_t__ mic_active; scalar_t__ analog_capture_active; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int HR222_LINE_CAPTURE_LEVEL_MIN ;
 int HR222_LINE_PLAYBACK_LEVEL_MIN ;
 int HR222_MICRO_CAPTURE_LEVEL_MIN ;
 int dev_dbg (int ,char*,char*,int) ;
 int hr222_set_hw_capture_level (int ,int,int,int) ;
 int hr222_set_hw_playback_level (int ,int,int) ;

int hr222_update_analog_audio_level(struct snd_pcxhr *chip,
        int is_capture, int channel)
{
 dev_dbg(chip->card->dev,
  "hr222_update_analog_audio_level(%s chan=%d)\n",
      is_capture ? "capture" : "playback", channel);
 if (is_capture) {
  int level_l, level_r, level_mic;

  if (chip->analog_capture_active) {
   level_l = chip->analog_capture_volume[0];
   level_r = chip->analog_capture_volume[1];
  } else {
   level_l = HR222_LINE_CAPTURE_LEVEL_MIN;
   level_r = HR222_LINE_CAPTURE_LEVEL_MIN;
  }
  if (chip->mic_active)
   level_mic = chip->mic_volume;
  else
   level_mic = HR222_MICRO_CAPTURE_LEVEL_MIN;
  return hr222_set_hw_capture_level(chip->mgr,
       level_l, level_r, level_mic);
 } else {
  int vol;
  if (chip->analog_playback_active[channel])
   vol = chip->analog_playback_volume[channel];
  else
   vol = HR222_LINE_PLAYBACK_LEVEL_MIN;
  return hr222_set_hw_playback_level(chip->mgr, channel, vol);
 }
}
