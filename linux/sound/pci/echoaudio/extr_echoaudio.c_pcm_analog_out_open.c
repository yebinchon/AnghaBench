
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; scalar_t__ number; } ;
struct echoaudio {int sample_rate; int opencount; scalar_t__ can_set_rate; TYPE_1__* card; scalar_t__ rate_set; } ;
struct TYPE_2__ {int dev; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dev_dbg (int ,char*,scalar_t__,int,int ) ;
 int hw_rule_playback_channels_by_format ;
 int hw_rule_playback_format_by_channels ;
 int num_analog_busses_out (struct echoaudio*) ;
 int num_pipes_out (struct echoaudio*) ;
 int pcm_open (struct snd_pcm_substream*,scalar_t__) ;
 int snd_pcm_hw_rule_add (int ,int ,int ,int ,int *,int ,int) ;
 struct echoaudio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_analog_out_open(struct snd_pcm_substream *substream)
{
 struct echoaudio *chip = snd_pcm_substream_chip(substream);
 int max_channels, err;




 max_channels = num_analog_busses_out(chip);

 if ((err = pcm_open(substream, max_channels - substream->number)) < 0)
  return err;
 if ((err = snd_pcm_hw_rule_add(substream->runtime, 0,
           SNDRV_PCM_HW_PARAM_CHANNELS,
           hw_rule_playback_channels_by_format,
           ((void*)0),
           SNDRV_PCM_HW_PARAM_FORMAT, -1)) < 0)
  return err;
 if ((err = snd_pcm_hw_rule_add(substream->runtime, 0,
           SNDRV_PCM_HW_PARAM_FORMAT,
           hw_rule_playback_format_by_channels,
           ((void*)0),
           SNDRV_PCM_HW_PARAM_CHANNELS, -1)) < 0)
  return err;
 atomic_inc(&chip->opencount);
 if (atomic_read(&chip->opencount) > 1 && chip->rate_set)
  chip->can_set_rate=0;
 dev_dbg(chip->card->dev, "pcm_analog_out_open  cs=%d  oc=%d  r=%d\n",
  chip->can_set_rate, atomic_read(&chip->opencount),
  chip->sample_rate);
 return 0;
}
