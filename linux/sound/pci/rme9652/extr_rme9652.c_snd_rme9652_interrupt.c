
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rme9652 {TYPE_1__* pcm; scalar_t__ playback_substream; scalar_t__ capture_substream; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int substream; } ;
struct TYPE_3__ {TYPE_2__* streams; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RME9652_IRQ ;
 int RME9652_irq_clear ;
 int RME9652_status_register ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int rme9652_read (struct snd_rme9652*,int ) ;
 int rme9652_write (struct snd_rme9652*,int ,int ) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static irqreturn_t snd_rme9652_interrupt(int irq, void *dev_id)
{
 struct snd_rme9652 *rme9652 = (struct snd_rme9652 *) dev_id;

 if (!(rme9652_read(rme9652, RME9652_status_register) & RME9652_IRQ)) {
  return IRQ_NONE;
 }

 rme9652_write(rme9652, RME9652_irq_clear, 0);

 if (rme9652->capture_substream) {
  snd_pcm_period_elapsed(rme9652->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
 }

 if (rme9652->playback_substream) {
  snd_pcm_period_elapsed(rme9652->pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream);
 }
 return IRQ_HANDLED;
}
