
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; int type; } ;
struct TYPE_7__ {int addr; int bytes; int area; TYPE_1__ dev; } ;
struct esm_memory {int empty; int list; TYPE_3__ buf; } ;
struct es1968 {int buf_list; TYPE_3__ dma; TYPE_2__* card; int total_bufsize; int pci; } ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 scalar_t__ ESM_MEM_ALIGN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SNDRV_DMA_TYPE_DEV ;
 int dev_err (int ,char*,...) ;
 struct esm_memory* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memset (int ,int ,scalar_t__) ;
 int snd_dma_alloc_pages_fallback (int ,int ,int ,TYPE_3__*) ;
 int snd_dma_free_pages (TYPE_3__*) ;
 int snd_dma_pci_data (int ) ;
 int snd_es1968_free_dmabuf (struct es1968*) ;

__attribute__((used)) static int
snd_es1968_init_dmabuf(struct es1968 *chip)
{
 int err;
 struct esm_memory *chunk;

 chip->dma.dev.type = SNDRV_DMA_TYPE_DEV;
 chip->dma.dev.dev = snd_dma_pci_data(chip->pci);
 err = snd_dma_alloc_pages_fallback(SNDRV_DMA_TYPE_DEV,
        snd_dma_pci_data(chip->pci),
        chip->total_bufsize, &chip->dma);
 if (err < 0 || ! chip->dma.area) {
  dev_err(chip->card->dev,
   "can't allocate dma pages for size %d\n",
      chip->total_bufsize);
  return -ENOMEM;
 }
 if ((chip->dma.addr + chip->dma.bytes - 1) & ~((1 << 28) - 1)) {
  snd_dma_free_pages(&chip->dma);
  dev_err(chip->card->dev, "DMA buffer beyond 256MB.\n");
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&chip->buf_list);

 chunk = kmalloc(sizeof(*chunk), GFP_KERNEL);
 if (chunk == ((void*)0)) {
  snd_es1968_free_dmabuf(chip);
  return -ENOMEM;
 }
 memset(chip->dma.area, 0, ESM_MEM_ALIGN);
 chunk->buf = chip->dma;
 chunk->buf.area += ESM_MEM_ALIGN;
 chunk->buf.addr += ESM_MEM_ALIGN;
 chunk->buf.bytes -= ESM_MEM_ALIGN;
 chunk->empty = 1;
 list_add(&chunk->list, &chip->buf_list);

 return 0;
}
