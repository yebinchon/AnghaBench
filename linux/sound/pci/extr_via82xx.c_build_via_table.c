
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * area; } ;
struct viadev {unsigned int tbl_entries; unsigned int bufsize; int bufsize2; unsigned int fragsize; TYPE_2__* idx_table; TYPE_1__ table; } ;
struct via82xx {int pci; } ;
struct snd_pcm_substream {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {unsigned int offset; unsigned int size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (int) ;
 int SNDRV_DMA_TYPE_DEV ;
 int VIA_TABLE_SIZE ;
 unsigned int VIA_TBL_BIT_EOL ;
 unsigned int VIA_TBL_BIT_FLAG ;
 int cpu_to_le32 (unsigned int) ;
 int dev_err (int *,char*) ;
 TYPE_2__* kmalloc_array (int,int,int ) ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int ,TYPE_1__*) ;
 int snd_dma_pci_data (int ) ;
 unsigned int snd_pcm_sgbuf_get_addr (struct snd_pcm_substream*,unsigned int) ;
 unsigned int snd_pcm_sgbuf_get_chunk_size (struct snd_pcm_substream*,unsigned int,unsigned int) ;
 struct via82xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int build_via_table(struct viadev *dev, struct snd_pcm_substream *substream,
      struct pci_dev *pci,
      unsigned int periods, unsigned int fragsize)
{
 unsigned int i, idx, ofs, rest;
 struct via82xx *chip = snd_pcm_substream_chip(substream);

 if (dev->table.area == ((void*)0)) {



  if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(chip->pci),
     PAGE_ALIGN(VIA_TABLE_SIZE * 2 * 8),
     &dev->table) < 0)
   return -ENOMEM;
 }
 if (! dev->idx_table) {
  dev->idx_table = kmalloc_array(VIA_TABLE_SIZE,
            sizeof(*dev->idx_table),
            GFP_KERNEL);
  if (! dev->idx_table)
   return -ENOMEM;
 }


 idx = 0;
 ofs = 0;
 for (i = 0; i < periods; i++) {
  rest = fragsize;




  do {
   unsigned int r;
   unsigned int flag;
   unsigned int addr;

   if (idx >= VIA_TABLE_SIZE) {
    dev_err(&pci->dev, "too much table size!\n");
    return -EINVAL;
   }
   addr = snd_pcm_sgbuf_get_addr(substream, ofs);
   ((u32 *)dev->table.area)[idx << 1] = cpu_to_le32(addr);
   r = snd_pcm_sgbuf_get_chunk_size(substream, ofs, rest);
   rest -= r;
   if (! rest) {
    if (i == periods - 1)
     flag = VIA_TBL_BIT_EOL;
    else
     flag = VIA_TBL_BIT_FLAG;
   } else
    flag = 0;





   ((u32 *)dev->table.area)[(idx<<1) + 1] = cpu_to_le32(r | flag);
   dev->idx_table[idx].offset = ofs;
   dev->idx_table[idx].size = r;
   ofs += r;
   idx++;
  } while (rest > 0);
 }
 dev->tbl_entries = idx;
 dev->bufsize = periods * fragsize;
 dev->bufsize2 = dev->bufsize / 2;
 dev->fragsize = fragsize;
 return 0;
}
