
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola_stream {scalar_t__ substream; scalar_t__ running; } ;
struct lola_pcm {int num_streams; struct lola_stream* streams; } ;
struct lola {int dummy; } ;


 int snd_pcm_period_elapsed (scalar_t__) ;

void lola_pcm_update(struct lola *chip, struct lola_pcm *pcm, unsigned int bits)
{
 int i;

 for (i = 0; bits && i < pcm->num_streams; i++) {
  if (bits & (1 << i)) {
   struct lola_stream *str = &pcm->streams[i];
   if (str->substream && str->running)
    snd_pcm_period_elapsed(str->substream);
   bits &= ~(1 << i);
  }
 }
}
