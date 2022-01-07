
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1 {int dma_mask; TYPE_1__* card; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int EMUPAGESIZE ;
 int dev_err_ratelimited (int ,char*,...) ;

__attribute__((used)) static int is_valid_page(struct snd_emu10k1 *emu, dma_addr_t addr)
{
 if (addr & ~emu->dma_mask) {
  dev_err_ratelimited(emu->card->dev,
   "max memory size is 0x%lx (addr = 0x%lx)!!\n",
   emu->dma_mask, (unsigned long)addr);
  return 0;
 }
 if (addr & (EMUPAGESIZE-1)) {
  dev_err_ratelimited(emu->card->dev, "page is not aligned\n");
  return 0;
 }
 return 1;
}
