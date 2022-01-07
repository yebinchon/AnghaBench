
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct es1938 {int dma1_size; size_t dma1_start; size_t last_capture_dmaaddr; size_t dma1_shift; } ;
typedef size_t snd_pcm_uframes_t ;


 int DMAADDR ;
 int DMACOUNT ;
 int SLDM_REG (struct es1938*,int ) ;
 size_t inl (int ) ;
 size_t inw (int ) ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_es1938_capture_pointer(struct snd_pcm_substream *substream)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);
 size_t ptr;
 size_t count;
 unsigned int diff;

 ptr = inl(SLDM_REG(chip, DMAADDR));
 count = inw(SLDM_REG(chip, DMACOUNT));
 diff = chip->dma1_start + chip->dma1_size - ptr - count;

 if (diff > 3 || ptr < chip->dma1_start
       || ptr >= chip->dma1_start+chip->dma1_size)
   ptr = chip->last_capture_dmaaddr;
 else
   chip->last_capture_dmaaddr = ptr;

 ptr -= chip->dma1_start;

 return ptr >> chip->dma1_shift;
}
