
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_es18xx {int caps; struct snd_pcm_substream* capture_a_substream; TYPE_2__* playback_a_substream; scalar_t__ playback_b_substream; } ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {int channels; } ;


 int EAGAIN ;
 int ES18XX_DUPLEX_MONO ;
 int ES18XX_NEW_RATE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int new_hw_constraints_clocks ;
 int old_hw_constraints_clocks ;
 int snd_es18xx_capture ;
 int snd_pcm_hw_constraint_ratnums (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_es18xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es18xx_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
        struct snd_es18xx *chip = snd_pcm_substream_chip(substream);

        if (chip->playback_b_substream)
                return -EAGAIN;
 if ((chip->caps & ES18XX_DUPLEX_MONO) &&
     chip->playback_a_substream &&
     chip->playback_a_substream->runtime->channels != 1)
  return -EAGAIN;
        chip->capture_a_substream = substream;
 substream->runtime->hw = snd_es18xx_capture;
 snd_pcm_hw_constraint_ratnums(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          (chip->caps & ES18XX_NEW_RATE) ? &new_hw_constraints_clocks : &old_hw_constraints_clocks);
        return 0;
}
