
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_substream* playback_substream; int timer_active; } ;


 scalar_t__ atomic_read (int *) ;
 TYPE_1__ pcsp_chip ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void pcsp_call_pcm_elapsed(unsigned long priv)
{
 if (atomic_read(&pcsp_chip.timer_active)) {
  struct snd_pcm_substream *substream;
  substream = pcsp_chip.playback_substream;
  if (substream)
   snd_pcm_period_elapsed(substream);
 }
}
