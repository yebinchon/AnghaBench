
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1938 {int dma2_size; int dma2_start; } ;


 int AUDIO2DMAADDR ;
 int AUDIO2DMACOUNT ;
 int AUDIO2MODE ;
 int SLIO_REG (struct es1938*,int ) ;
 int outb (int,int ) ;
 int outl (int ,int ) ;
 int outw (int ,int ) ;

__attribute__((used)) static void snd_es1938_playback1_setdma(struct es1938 *chip)
{
 outb(0x00, SLIO_REG(chip, AUDIO2MODE));
 outl(chip->dma2_start, SLIO_REG(chip, AUDIO2DMAADDR));
 outw(0, SLIO_REG(chip, AUDIO2DMACOUNT));
 outw(chip->dma2_size, SLIO_REG(chip, AUDIO2DMACOUNT));
}
