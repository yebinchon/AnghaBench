
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int capture_format; int mixer_lock; int reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int rate; } ;


 int ALS4000_FORMAT_16BIT ;
 int ALS4K_CR1C_FIFO2_BLOCK_LENGTH_LO ;
 int ALS4K_CR1D_FIFO2_BLOCK_LENGTH_HI ;
 int snd_als4000_get_format (struct snd_pcm_runtime*) ;
 int snd_als4000_set_capture_dma (struct snd_sb*,int ,unsigned long) ;
 int snd_als4000_set_rate (struct snd_sb*,int ) ;
 int snd_als4_cr_write (struct snd_sb*,int ,unsigned int) ;
 unsigned long snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_als4000_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long size;
 unsigned count;

 chip->capture_format = snd_als4000_get_format(runtime);

 size = snd_pcm_lib_buffer_bytes(substream);
 count = snd_pcm_lib_period_bytes(substream);

 if (chip->capture_format & ALS4000_FORMAT_16BIT)
  count >>= 1;
 count--;

 spin_lock_irq(&chip->reg_lock);
 snd_als4000_set_rate(chip, runtime->rate);
 snd_als4000_set_capture_dma(chip, runtime->dma_addr, size);
 spin_unlock_irq(&chip->reg_lock);
 spin_lock_irq(&chip->mixer_lock);
 snd_als4_cr_write(chip, ALS4K_CR1C_FIFO2_BLOCK_LENGTH_LO, count & 0xff);
 snd_als4_cr_write(chip, ALS4K_CR1D_FIFO2_BLOCK_LENGTH_HI, count >> 8);
 spin_unlock_irq(&chip->mixer_lock);
 return 0;
}
