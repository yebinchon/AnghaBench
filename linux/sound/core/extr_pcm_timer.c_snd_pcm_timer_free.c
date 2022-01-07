
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {struct snd_pcm_substream* private_data; } ;
struct snd_pcm_substream {int * timer; } ;



__attribute__((used)) static void snd_pcm_timer_free(struct snd_timer *timer)
{
 struct snd_pcm_substream *substream = timer->private_data;
 substream->timer = ((void*)0);
}
