
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; int runtime; } ;
struct echoaudio {scalar_t__ digital_mode; int mode_mutex; scalar_t__ can_set_rate; scalar_t__ rate_set; int opencount; } ;


 scalar_t__ DIGITAL_MODE_ADAT ;
 int ECHOCARD_HAS_ADAT ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int hw_rule_playback_channels_by_format ;
 int hw_rule_playback_format_by_channels ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_digital_busses_out (struct echoaudio*) ;
 int pcm_open (struct snd_pcm_substream*,int) ;
 int snd_pcm_hw_rule_add (int ,int ,int ,int ,int *,int ,int) ;
 struct echoaudio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_digital_out_open(struct snd_pcm_substream *substream)
{
 struct echoaudio *chip = snd_pcm_substream_chip(substream);
 int err, max_channels;

 max_channels = num_digital_busses_out(chip) - substream->number;
 mutex_lock(&chip->mode_mutex);
 if (chip->digital_mode == DIGITAL_MODE_ADAT)
  err = pcm_open(substream, max_channels);
 else


  err = pcm_open(substream, max_channels - ECHOCARD_HAS_ADAT);

 if (err < 0)
  goto dout_exit;

 if ((err = snd_pcm_hw_rule_add(substream->runtime, 0,
           SNDRV_PCM_HW_PARAM_CHANNELS,
           hw_rule_playback_channels_by_format,
           ((void*)0), SNDRV_PCM_HW_PARAM_FORMAT,
           -1)) < 0)
  goto dout_exit;
 if ((err = snd_pcm_hw_rule_add(substream->runtime, 0,
           SNDRV_PCM_HW_PARAM_FORMAT,
           hw_rule_playback_format_by_channels,
           ((void*)0), SNDRV_PCM_HW_PARAM_CHANNELS,
           -1)) < 0)
  goto dout_exit;
 atomic_inc(&chip->opencount);
 if (atomic_read(&chip->opencount) > 1 && chip->rate_set)
  chip->can_set_rate=0;
dout_exit:
 mutex_unlock(&chip->mode_mutex);
 return err;
}
