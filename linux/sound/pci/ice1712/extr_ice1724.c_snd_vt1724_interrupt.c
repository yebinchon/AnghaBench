
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {scalar_t__ capture_con_substream; scalar_t__ playback_con_substream; scalar_t__* playback_con_substream_ds; scalar_t__ capture_pro_substream; scalar_t__ playback_pro_substream; int reg_lock; scalar_t__ midi_input; scalar_t__ midi_output; TYPE_1__* card; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_FIFO_ERR ;
 int DMA_INT_MASK ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int IRQ ;
 int IRQSTAT ;
 int IRQ_RETVAL (int) ;
 unsigned char VT1724_IRQ_MPU_RX ;
 unsigned char VT1724_IRQ_MPU_TX ;
 unsigned char VT1724_IRQ_MTPCM ;
 unsigned char VT1724_MULTI_FIFO_ERR ;
 unsigned char VT1724_MULTI_PDMA0 ;
 unsigned char VT1724_MULTI_PDMA1 ;
 unsigned char VT1724_MULTI_PDMA2 ;
 unsigned char VT1724_MULTI_PDMA3 ;
 unsigned char VT1724_MULTI_PDMA4 ;
 unsigned char VT1724_MULTI_RDMA0 ;
 unsigned char VT1724_MULTI_RDMA1 ;
 int dev_err (int ,char*,...) ;
 int enable_midi_irq (struct snd_ice1712*,unsigned char,int ) ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vt1724_midi_clear_rx (struct snd_ice1712*) ;
 int vt1724_midi_read (struct snd_ice1712*) ;
 int vt1724_midi_write (struct snd_ice1712*) ;

__attribute__((used)) static irqreturn_t snd_vt1724_interrupt(int irq, void *dev_id)
{
 struct snd_ice1712 *ice = dev_id;
 unsigned char status;
 unsigned char status_mask =
  VT1724_IRQ_MPU_RX | VT1724_IRQ_MPU_TX | VT1724_IRQ_MTPCM;
 int handled = 0;
 int timeout = 0;

 while (1) {
  status = inb(ICEREG1724(ice, IRQSTAT));
  status &= status_mask;
  if (status == 0)
   break;
  spin_lock(&ice->reg_lock);
  if (++timeout > 10) {
   status = inb(ICEREG1724(ice, IRQSTAT));
   dev_err(ice->card->dev,
    "Too long irq loop, status = 0x%x\n", status);
   if (status & VT1724_IRQ_MPU_TX) {
    dev_err(ice->card->dev, "Disabling MPU_TX\n");
    enable_midi_irq(ice, VT1724_IRQ_MPU_TX, 0);
   }
   spin_unlock(&ice->reg_lock);
   break;
  }
  handled = 1;
  if (status & VT1724_IRQ_MPU_TX) {
   if (ice->midi_output)
    vt1724_midi_write(ice);
   else
    enable_midi_irq(ice, VT1724_IRQ_MPU_TX, 0);





   status_mask &= ~VT1724_IRQ_MPU_TX;
  }
  if (status & VT1724_IRQ_MPU_RX) {
   if (ice->midi_input)
    vt1724_midi_read(ice);
   else
    vt1724_midi_clear_rx(ice);
  }

  outb(status, ICEREG1724(ice, IRQSTAT));
  spin_unlock(&ice->reg_lock);
  if (status & VT1724_IRQ_MTPCM) {
   unsigned char mtstat = inb(ICEMT1724(ice, IRQ));
   if (mtstat & VT1724_MULTI_PDMA0) {
    if (ice->playback_pro_substream)
     snd_pcm_period_elapsed(ice->playback_pro_substream);
   }
   if (mtstat & VT1724_MULTI_RDMA0) {
    if (ice->capture_pro_substream)
     snd_pcm_period_elapsed(ice->capture_pro_substream);
   }
   if (mtstat & VT1724_MULTI_PDMA1) {
    if (ice->playback_con_substream_ds[0])
     snd_pcm_period_elapsed(ice->playback_con_substream_ds[0]);
   }
   if (mtstat & VT1724_MULTI_PDMA2) {
    if (ice->playback_con_substream_ds[1])
     snd_pcm_period_elapsed(ice->playback_con_substream_ds[1]);
   }
   if (mtstat & VT1724_MULTI_PDMA3) {
    if (ice->playback_con_substream_ds[2])
     snd_pcm_period_elapsed(ice->playback_con_substream_ds[2]);
   }
   if (mtstat & VT1724_MULTI_PDMA4) {
    if (ice->playback_con_substream)
     snd_pcm_period_elapsed(ice->playback_con_substream);
   }
   if (mtstat & VT1724_MULTI_RDMA1) {
    if (ice->capture_con_substream)
     snd_pcm_period_elapsed(ice->capture_con_substream);
   }

   outb(mtstat, ICEMT1724(ice, IRQ));

   if (mtstat & VT1724_MULTI_FIFO_ERR) {
    unsigned char fstat = inb(ICEMT1724(ice, DMA_FIFO_ERR));
    outb(fstat, ICEMT1724(ice, DMA_FIFO_ERR));
    outb(VT1724_MULTI_FIFO_ERR | inb(ICEMT1724(ice, DMA_INT_MASK)), ICEMT1724(ice, DMA_INT_MASK));

   }

  }
 }
 return IRQ_RETVAL(handled);
}
