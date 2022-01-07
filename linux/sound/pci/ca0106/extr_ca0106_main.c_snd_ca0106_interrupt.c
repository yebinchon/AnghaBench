
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_ca0106_channel {TYPE_1__* epcm; scalar_t__ use; } ;
struct TYPE_5__ {unsigned int ipr_tx; unsigned int ipr_rx; int tx_enable; int rx_enable; int (* interrupt_disable ) (TYPE_2__*,int) ;int (* interrupt ) (TYPE_2__*,unsigned int) ;scalar_t__ dev_id; } ;
struct snd_ca0106 {scalar_t__ port; TYPE_2__ midi; struct snd_ca0106_channel* capture_channels; struct snd_ca0106_channel* playback_channels; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int substream; } ;


 int EXTENDED_INT ;
 scalar_t__ IPR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 unsigned int snd_ca0106_ptr_read (struct snd_ca0106*,int ,int ) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,int ,int ,unsigned int) ;
 int snd_pcm_period_elapsed (int ) ;
 int stub1 (TYPE_2__*,unsigned int) ;
 int stub2 (TYPE_2__*,int) ;

__attribute__((used)) static irqreturn_t snd_ca0106_interrupt(int irq, void *dev_id)
{
 unsigned int status;

 struct snd_ca0106 *chip = dev_id;
 int i;
 int mask;
        unsigned int stat76;
 struct snd_ca0106_channel *pchannel;

 status = inl(chip->port + IPR);
 if (! status)
  return IRQ_NONE;

        stat76 = snd_ca0106_ptr_read(chip, EXTENDED_INT, 0);






        mask = 0x11;
 for(i = 0; i < 4; i++) {
  pchannel = &(chip->playback_channels[i]);
  if (stat76 & mask) {

   if(pchannel->use) {
    snd_pcm_period_elapsed(pchannel->epcm->substream);

                        }
  }




  mask <<= 1;
 }
        mask = 0x110000;
 for(i = 0; i < 4; i++) {
  pchannel = &(chip->capture_channels[i]);
  if (stat76 & mask) {

   if(pchannel->use) {
    snd_pcm_period_elapsed(pchannel->epcm->substream);

                        }
  }




  mask <<= 1;
 }

        snd_ca0106_ptr_write(chip, EXTENDED_INT, 0, stat76);

 if (chip->midi.dev_id &&
     (status & (chip->midi.ipr_tx|chip->midi.ipr_rx))) {
  if (chip->midi.interrupt)
   chip->midi.interrupt(&chip->midi, status);
  else
   chip->midi.interrupt_disable(&chip->midi, chip->midi.tx_enable | chip->midi.rx_enable);
 }


 outl(status, chip->port+IPR);

 return IRQ_HANDLED;
}
