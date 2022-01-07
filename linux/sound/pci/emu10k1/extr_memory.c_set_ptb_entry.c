
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1 {TYPE_1__* card; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ EMUPAGESIZE ;
 int UNIT_PAGES ;
 scalar_t__ __get_ptb_entry (struct snd_emu10k1*,int) ;
 int __set_ptb_entry (struct snd_emu10k1*,int,int ) ;
 int dev_dbg (int ,char*,int,unsigned int) ;

__attribute__((used)) static inline void set_ptb_entry(struct snd_emu10k1 *emu, int page, dma_addr_t addr)
{
 int i;
 page *= UNIT_PAGES;
 for (i = 0; i < UNIT_PAGES; i++, page++) {
  __set_ptb_entry(emu, page, addr);
  dev_dbg(emu->card->dev, "mapped page %d to entry %.8x\n", page,
   (unsigned int)__get_ptb_entry(emu, page));
  addr += EMUPAGESIZE;
 }
}
