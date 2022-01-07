
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_als300_substream_data {int period_flipflop; } ;
struct snd_als300 {TYPE_2__* capture_substream; scalar_t__ pcm; TYPE_2__* playback_substream; scalar_t__ port; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {struct snd_als300_substream_data* private_data; } ;


 scalar_t__ ALS300_IRQ_STATUS ;
 int IRQ_CAPTURE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_PLAYBACK ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int snd_als300_dbgplay (char*) ;
 int snd_pcm_period_elapsed (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t snd_als300_interrupt(int irq, void *dev_id)
{
 u8 status;
 struct snd_als300 *chip = dev_id;
 struct snd_als300_substream_data *data;

 status = inb(chip->port+ALS300_IRQ_STATUS);
 if (!status)
  return IRQ_NONE;


 outb(status, chip->port+ALS300_IRQ_STATUS);
 if (status & IRQ_PLAYBACK) {
  if (chip->pcm && chip->playback_substream) {
   data = chip->playback_substream->runtime->private_data;
   data->period_flipflop ^= 1;
   snd_pcm_period_elapsed(chip->playback_substream);
   snd_als300_dbgplay("IRQ_PLAYBACK\n");
  }
 }
 if (status & IRQ_CAPTURE) {
  if (chip->pcm && chip->capture_substream) {
   data = chip->capture_substream->runtime->private_data;
   data->period_flipflop ^= 1;
   snd_pcm_period_elapsed(chip->capture_substream);
   snd_als300_dbgplay("IRQ_CAPTURE\n");
  }
 }
 return IRQ_HANDLED;
}
