
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nm256 {scalar_t__ badintrcount; TYPE_1__* streams; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ running; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_nm256_capture_stop (struct nm256*) ;
 int snd_nm256_playback_stop (struct nm256*) ;

__attribute__((used)) static irqreturn_t
snd_nm256_intr_check(struct nm256 *chip)
{
 if (chip->badintrcount++ > 1000) {
  if (chip->streams[SNDRV_PCM_STREAM_PLAYBACK].running)
   snd_nm256_playback_stop(chip);
  if (chip->streams[SNDRV_PCM_STREAM_CAPTURE].running)
   snd_nm256_capture_stop(chip);
  chip->badintrcount = 0;
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
