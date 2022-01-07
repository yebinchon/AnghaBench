
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_line6_pcm {TYPE_1__* properties; } ;
struct TYPE_2__ {int capture_hw; int rates; } ;


 int LINE6_STREAM_CAPTURE_HELPER ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int line6_pcm_acquire (struct snd_line6_pcm*,int ,int) ;
 int snd_pcm_hw_constraint_ratdens (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_line6_capture_open(struct snd_pcm_substream *substream)
{
 int err;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);

 err = snd_pcm_hw_constraint_ratdens(runtime, 0,
         SNDRV_PCM_HW_PARAM_RATE,
         &line6pcm->properties->rates);
 if (err < 0)
  return err;

 line6_pcm_acquire(line6pcm, LINE6_STREAM_CAPTURE_HELPER, 0);

 runtime->hw = line6pcm->properties->capture_hw;
 return 0;
}
