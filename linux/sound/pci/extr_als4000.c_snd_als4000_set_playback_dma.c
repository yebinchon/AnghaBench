
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;
typedef unsigned int dma_addr_t ;


 int ALS4K_GCR91_DMA0_ADDR ;
 int ALS4K_GCR92_DMA0_MODE_COUNT ;
 int snd_als4k_gcr_write (struct snd_sb*,int ,unsigned int) ;

__attribute__((used)) static inline void snd_als4000_set_playback_dma(struct snd_sb *chip,
      dma_addr_t addr,
      unsigned size)
{

 snd_als4k_gcr_write(chip, ALS4K_GCR91_DMA0_ADDR, addr);
 snd_als4k_gcr_write(chip, ALS4K_GCR92_DMA0_MODE_COUNT,
       (size-1)|0x180000);
}
