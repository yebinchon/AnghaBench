
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs5535audio_dma_desc {void* ctlreserved; void* size; void* addr; } ;
struct TYPE_6__ {scalar_t__ addr; int * area; } ;
struct cs5535audio_dma {unsigned int period_bytes; unsigned int periods; TYPE_2__* ops; struct snd_pcm_substream* substream; TYPE_3__ desc_buf; } ;
struct cs5535audio {int reg_lock; int pci; } ;
struct TYPE_5__ {int (* setup_prd ) (struct cs5535audio*,scalar_t__) ;int (* disable_dma ) (struct cs5535audio*) ;} ;
struct TYPE_4__ {scalar_t__ dma_addr; } ;


 scalar_t__ CS5535AUDIO_DESC_LIST_SIZE ;
 unsigned int CS5535AUDIO_MAX_DESCRIPTORS ;
 int ENOMEM ;
 unsigned int PRD_EOP ;
 unsigned int PRD_JMP ;
 int SNDRV_DMA_TYPE_DEV ;
 void* cpu_to_le16 (unsigned int) ;
 void* cpu_to_le32 (scalar_t__) ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,scalar_t__,TYPE_3__*) ;
 int snd_dma_pci_data (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct cs5535audio*) ;
 int stub2 (struct cs5535audio*,scalar_t__) ;

__attribute__((used)) static int cs5535audio_build_dma_packets(struct cs5535audio *cs5535au,
      struct cs5535audio_dma *dma,
      struct snd_pcm_substream *substream,
      unsigned int periods,
      unsigned int period_bytes)
{
 unsigned int i;
 u32 addr, desc_addr, jmpprd_addr;
 struct cs5535audio_dma_desc *lastdesc;

 if (periods > CS5535AUDIO_MAX_DESCRIPTORS)
  return -ENOMEM;

 if (dma->desc_buf.area == ((void*)0)) {
  if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
     snd_dma_pci_data(cs5535au->pci),
     CS5535AUDIO_DESC_LIST_SIZE+1,
     &dma->desc_buf) < 0)
   return -ENOMEM;
  dma->period_bytes = dma->periods = 0;
 }

 if (dma->periods == periods && dma->period_bytes == period_bytes)
  return 0;



 addr = (u32) substream->runtime->dma_addr;
 desc_addr = (u32) dma->desc_buf.addr;
 for (i = 0; i < periods; i++) {
  struct cs5535audio_dma_desc *desc =
   &((struct cs5535audio_dma_desc *) dma->desc_buf.area)[i];
  desc->addr = cpu_to_le32(addr);
  desc->size = cpu_to_le16(period_bytes);
  desc->ctlreserved = cpu_to_le16(PRD_EOP);
  desc_addr += sizeof(struct cs5535audio_dma_desc);
  addr += period_bytes;
 }

 lastdesc = &((struct cs5535audio_dma_desc *) dma->desc_buf.area)[periods];
 lastdesc->addr = cpu_to_le32((u32) dma->desc_buf.addr);
 lastdesc->size = 0;
 lastdesc->ctlreserved = cpu_to_le16(PRD_JMP);
 jmpprd_addr = (u32)dma->desc_buf.addr +
  sizeof(struct cs5535audio_dma_desc) * periods;

 dma->substream = substream;
 dma->period_bytes = period_bytes;
 dma->periods = periods;
 spin_lock_irq(&cs5535au->reg_lock);
 dma->ops->disable_dma(cs5535au);
 dma->ops->setup_prd(cs5535au, jmpprd_addr);
 spin_unlock_irq(&cs5535au->reg_lock);
 return 0;
}
