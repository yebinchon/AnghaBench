
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcxhr {int chip_idx; TYPE_1__* card; struct pcxhr_stream* capture_stream; struct pcxhr_stream* playback_stream; struct pcxhr_mgr* mgr; } ;
struct snd_pcm_substream {scalar_t__ stream; size_t number; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int channels_max; int channels_min; int rate_min; int rate_max; int formats; } ;
struct snd_pcm_runtime {struct pcxhr_stream* private_data; TYPE_2__ hw; } ;
struct pcxhr_stream {scalar_t__ status; scalar_t__ channels; struct snd_pcm_substream* substream; } ;
struct pcxhr_mgr {int sample_rate; scalar_t__ use_clock_type; int setup_mutex; int ref_count_rate; scalar_t__ is_hr_stereo; scalar_t__ mono_capture; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 scalar_t__ PCXHR_CLOCK_TYPE_INTERNAL ;
 scalar_t__ PCXHR_STREAM_STATUS_FREE ;
 scalar_t__ PCXHR_STREAM_STATUS_OPEN ;
 int SNDRV_PCM_FMTBIT_FLOAT_LE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_dbg (int ,char*,int ,size_t) ;
 int dev_err (int ,char*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__ pcxhr_caps ;
 scalar_t__ pcxhr_get_external_clock (struct pcxhr_mgr*,scalar_t__,int*) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_pcxhr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcxhr_open(struct snd_pcm_substream *subs)
{
 struct snd_pcxhr *chip = snd_pcm_substream_chip(subs);
 struct pcxhr_mgr *mgr = chip->mgr;
 struct snd_pcm_runtime *runtime = subs->runtime;
 struct pcxhr_stream *stream;
 int err;

 mutex_lock(&mgr->setup_mutex);


 runtime->hw = pcxhr_caps;

 if( subs->stream == SNDRV_PCM_STREAM_PLAYBACK ) {
  dev_dbg(chip->card->dev, "pcxhr_open playback chip%d subs%d\n",
       chip->chip_idx, subs->number);
  stream = &chip->playback_stream[subs->number];
 } else {
  dev_dbg(chip->card->dev, "pcxhr_open capture chip%d subs%d\n",
       chip->chip_idx, subs->number);
  if (mgr->mono_capture)
   runtime->hw.channels_max = 1;
  else
   runtime->hw.channels_min = 2;
  stream = &chip->capture_stream[subs->number];
 }
 if (stream->status != PCXHR_STREAM_STATUS_FREE){

  dev_err(chip->card->dev, "pcxhr_open chip%d subs%d in use\n",
      chip->chip_idx, subs->number);
  mutex_unlock(&mgr->setup_mutex);
  return -EBUSY;
 }


 if (mgr->is_hr_stereo)
  runtime->hw.formats &= ~SNDRV_PCM_FMTBIT_FLOAT_LE;


 err = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0) {
  mutex_unlock(&mgr->setup_mutex);
  return err;
 }




 if (mgr->sample_rate)
  runtime->hw.rate_min = runtime->hw.rate_max = mgr->sample_rate;
 else {
  if (mgr->use_clock_type != PCXHR_CLOCK_TYPE_INTERNAL) {
   int external_rate;
   if (pcxhr_get_external_clock(mgr, mgr->use_clock_type,
           &external_rate) ||
       external_rate == 0) {

    mutex_unlock(&mgr->setup_mutex);
    return -EBUSY;
   }
   runtime->hw.rate_min = external_rate;
   runtime->hw.rate_max = external_rate;
  }
 }

 stream->status = PCXHR_STREAM_STATUS_OPEN;
 stream->substream = subs;
 stream->channels = 0;

 runtime->private_data = stream;


 snd_pcm_hw_constraint_step(runtime, 0,
       SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 32);
 snd_pcm_hw_constraint_step(runtime, 0,
       SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 32);
 snd_pcm_set_sync(subs);

 mgr->ref_count_rate++;

 mutex_unlock(&mgr->setup_mutex);
 return 0;
}
