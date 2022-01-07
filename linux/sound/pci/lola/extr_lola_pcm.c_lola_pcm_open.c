
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {scalar_t__ rate_max; scalar_t__ rate_min; scalar_t__ channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct lola_stream {int opened; scalar_t__ index; int * master; struct snd_pcm_substream* substream; } ;
struct lola_pcm {scalar_t__ num_streams; } ;
struct lola {int open_mutex; int granularity; int ref_count_rate; scalar_t__ sample_rate_max; scalar_t__ sample_rate_min; scalar_t__ sample_rate; } ;


 int EBUSY ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 struct lola_pcm* lola_get_pcm (struct snd_pcm_substream*) ;
 struct lola_stream* lola_get_stream (struct snd_pcm_substream*) ;
 TYPE_1__ lola_pcm_hw ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int ) ;
 struct lola* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int lola_pcm_open(struct snd_pcm_substream *substream)
{
 struct lola *chip = snd_pcm_substream_chip(substream);
 struct lola_pcm *pcm = lola_get_pcm(substream);
 struct lola_stream *str = lola_get_stream(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 mutex_lock(&chip->open_mutex);
 if (str->opened) {
  mutex_unlock(&chip->open_mutex);
  return -EBUSY;
 }
 str->substream = substream;
 str->master = ((void*)0);
 str->opened = 1;
 runtime->hw = lola_pcm_hw;
 runtime->hw.channels_max = pcm->num_streams - str->index;
 if (chip->sample_rate) {

  runtime->hw.rate_min = chip->sample_rate;
  runtime->hw.rate_max = chip->sample_rate;
 } else {
  runtime->hw.rate_min = chip->sample_rate_min;
  runtime->hw.rate_max = chip->sample_rate_max;
 }
 chip->ref_count_rate++;
 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);

 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
       chip->granularity);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
       chip->granularity);
 mutex_unlock(&chip->open_mutex);
 return 0;
}
