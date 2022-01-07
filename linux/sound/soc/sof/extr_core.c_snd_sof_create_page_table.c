
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_sof_dev {int dev; } ;
struct snd_dma_buffer {int area; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dev_dbg (int ,char*,int ,size_t,int) ;
 int dev_vdbg (int ,char*,int,int,int) ;
 int put_unaligned_le32 (int,int*) ;
 int snd_sgbuf_aligned_pages (size_t) ;
 int snd_sgbuf_get_addr (struct snd_dma_buffer*,int) ;

int snd_sof_create_page_table(struct snd_sof_dev *sdev,
         struct snd_dma_buffer *dmab,
         unsigned char *page_table, size_t size)
{
 int i, pages;

 pages = snd_sgbuf_aligned_pages(size);

 dev_dbg(sdev->dev, "generating page table for %p size 0x%zx pages %d\n",
  dmab->area, size, pages);

 for (i = 0; i < pages; i++) {







  u32 idx = (5 * i) >> 1;
  u32 pfn = snd_sgbuf_get_addr(dmab, i * PAGE_SIZE) >> PAGE_SHIFT;
  u8 *pg_table;

  dev_vdbg(sdev->dev, "pfn i %i idx %d pfn %x\n", i, idx, pfn);

  pg_table = (u8 *)(page_table + idx);
  if (i & 1)
   put_unaligned_le32((pg_table[0] & 0xf) | pfn << 4,
        pg_table);
  else
   put_unaligned_le32(pfn, pg_table);
 }

 return pages;
}
