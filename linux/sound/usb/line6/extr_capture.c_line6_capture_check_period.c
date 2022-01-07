
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int bytes; int period; int lock; } ;
struct snd_line6_pcm {TYPE_1__ in; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 struct snd_pcm_substream* get_substream (struct snd_line6_pcm*,int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void line6_capture_check_period(struct snd_line6_pcm *line6pcm, int length)
{
 struct snd_pcm_substream *substream =
     get_substream(line6pcm, SNDRV_PCM_STREAM_CAPTURE);

 line6pcm->in.bytes += length;
 if (line6pcm->in.bytes >= line6pcm->in.period) {
  line6pcm->in.bytes %= line6pcm->in.period;
  spin_unlock(&line6pcm->in.lock);
  snd_pcm_period_elapsed(substream);
  spin_lock(&line6pcm->in.lock);
 }
}
