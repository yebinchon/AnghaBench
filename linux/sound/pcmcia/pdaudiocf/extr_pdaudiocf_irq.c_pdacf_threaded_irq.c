
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pdacf {int chip_status; unsigned long port; int pcm_frame; int pcm_hwptr; int pcm_size; int pcm_tdone; int pcm_period; int reg_lock; TYPE_1__* pcm_substream; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int * runtime; } ;


 int IRQ_HANDLED ;
 unsigned long PDAUDIOCF_REG_MD ;
 unsigned long PDAUDIOCF_REG_RDP ;
 unsigned long PDAUDIOCF_REG_WDP ;
 int PDAUDIOCF_STAT_IS_CONFIGURED ;
 int PDAUDIOCF_STAT_IS_STALE ;
 int inw (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pdacf_transfer (struct snd_pdacf*,int,int) ;
 int snd_pcm_period_elapsed (TYPE_1__*) ;
 int snd_pcm_running (TYPE_1__*) ;

irqreturn_t pdacf_threaded_irq(int irq, void *dev)
{
 struct snd_pdacf *chip = dev;
 int size, off, cont, rdp, wdp;

 if ((chip->chip_status & (PDAUDIOCF_STAT_IS_STALE|PDAUDIOCF_STAT_IS_CONFIGURED)) != PDAUDIOCF_STAT_IS_CONFIGURED)
  return IRQ_HANDLED;

 if (chip->pcm_substream == ((void*)0) || chip->pcm_substream->runtime == ((void*)0) || !snd_pcm_running(chip->pcm_substream))
  return IRQ_HANDLED;

 rdp = inw(chip->port + PDAUDIOCF_REG_RDP);
 wdp = inw(chip->port + PDAUDIOCF_REG_WDP);

 size = wdp - rdp;
 if (size < 0)
  size += 0x10000;
 if (size == 0)
  size = 0x10000;
 size /= chip->pcm_frame;
 if (size > 64)
  size -= 32;
 off = chip->pcm_hwptr + chip->pcm_tdone;
 off %= chip->pcm_size;
 chip->pcm_tdone += size;
 while (size > 0) {
  cont = chip->pcm_size - off;
  if (cont > size)
   cont = size;
  pdacf_transfer(chip, cont, off);
  off += cont;
  off %= chip->pcm_size;
  size -= cont;
 }

 mutex_lock(&chip->reg_lock);
 while (chip->pcm_tdone >= chip->pcm_period) {
  chip->pcm_hwptr += chip->pcm_period;
  chip->pcm_hwptr %= chip->pcm_size;
  chip->pcm_tdone -= chip->pcm_period;
  mutex_unlock(&chip->reg_lock);
  snd_pcm_period_elapsed(chip->pcm_substream);
  mutex_lock(&chip->reg_lock);
 }
 mutex_unlock(&chip->reg_lock);
 return IRQ_HANDLED;
}
