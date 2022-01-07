
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int bytes; int addr; int * area; } ;
struct TYPE_4__ {TYPE_2__ etram_pages; } ;
struct snd_emu10k1 {int emu_lock; scalar_t__ port; TYPE_1__ fx8010; int pci; } ;


 int ENOMEM ;
 scalar_t__ HCFG ;
 int HCFG_LOCKTANKCACHE_MASK ;
 int SNDRV_DMA_TYPE_DEV ;
 int TCB ;
 int TCBS ;
 int inl (scalar_t__) ;
 int memset (int *,int ,int) ;
 int outl (int,scalar_t__) ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int,TYPE_2__*) ;
 int snd_dma_free_pages (TYPE_2__*) ;
 int snd_dma_pci_data (int ) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_emu10k1_fx8010_tram_setup(struct snd_emu10k1 *emu, u32 size)
{
 u8 size_reg = 0;


 if (size != 0) {
  size = (size - 1) >> 13;

  while (size) {
   size >>= 1;
   size_reg++;
  }
  size = 0x2000 << size_reg;
 }
 if ((emu->fx8010.etram_pages.bytes / 2) == size)
  return 0;
 spin_lock_irq(&emu->emu_lock);
 outl(HCFG_LOCKTANKCACHE_MASK | inl(emu->port + HCFG), emu->port + HCFG);
 spin_unlock_irq(&emu->emu_lock);
 snd_emu10k1_ptr_write(emu, TCB, 0, 0);
 snd_emu10k1_ptr_write(emu, TCBS, 0, 0);
 if (emu->fx8010.etram_pages.area != ((void*)0)) {
  snd_dma_free_pages(&emu->fx8010.etram_pages);
  emu->fx8010.etram_pages.area = ((void*)0);
  emu->fx8010.etram_pages.bytes = 0;
 }

 if (size > 0) {
  if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(emu->pci),
     size * 2, &emu->fx8010.etram_pages) < 0)
   return -ENOMEM;
  memset(emu->fx8010.etram_pages.area, 0, size * 2);
  snd_emu10k1_ptr_write(emu, TCB, 0, emu->fx8010.etram_pages.addr);
  snd_emu10k1_ptr_write(emu, TCBS, 0, size_reg);
  spin_lock_irq(&emu->emu_lock);
  outl(inl(emu->port + HCFG) & ~HCFG_LOCKTANKCACHE_MASK, emu->port + HCFG);
  spin_unlock_irq(&emu->emu_lock);
 }

 return 0;
}
