
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int rate; } ;
struct esschan {int fmt; int frag_size; } ;
struct es1968 {int dummy; } ;


 int ESM_BOB_FREQ ;
 int ESM_BOB_FREQ_MAX ;
 int ESS_FMT_16BIT ;
 int ESS_FMT_STEREO ;

__attribute__((used)) static int
snd_es1968_calc_bob_rate(struct es1968 *chip, struct esschan *es,
    struct snd_pcm_runtime *runtime)
{

 int freq = runtime->rate * 4;
 if (es->fmt & ESS_FMT_STEREO)
  freq <<= 1;
 if (es->fmt & ESS_FMT_16BIT)
  freq <<= 1;
 freq /= es->frag_size;
 if (freq < ESM_BOB_FREQ)
  freq = ESM_BOB_FREQ;
 else if (freq > ESM_BOB_FREQ_MAX)
  freq = ESM_BOB_FREQ_MAX;
 return freq;
}
