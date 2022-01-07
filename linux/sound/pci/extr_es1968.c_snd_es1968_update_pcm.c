
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct esschan {unsigned int wav_shift; unsigned int dma_size; unsigned int hwptr; unsigned int count; unsigned int frag_size; int running; struct snd_pcm_substream* substream; } ;
struct es1968 {int substream_lock; } ;


 unsigned int snd_es1968_get_dma_ptr (struct es1968*,struct esschan*) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_es1968_update_pcm(struct es1968 *chip, struct esschan *es)
{
 unsigned int hwptr;
 unsigned int diff;
 struct snd_pcm_substream *subs = es->substream;

 if (subs == ((void*)0) || !es->running)
  return;

 hwptr = snd_es1968_get_dma_ptr(chip, es) << es->wav_shift;
 hwptr %= es->dma_size;

 diff = (es->dma_size + hwptr - es->hwptr) % es->dma_size;

 es->hwptr = hwptr;
 es->count += diff;

 if (es->count > es->frag_size) {
  spin_unlock(&chip->substream_lock);
  snd_pcm_period_elapsed(subs);
  spin_lock(&chip->substream_lock);
  es->count %= es->frag_size;
 }
}
