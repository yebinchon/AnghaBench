
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {size_t dma8; size_t dma16; size_t irq; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned char SB_JAZZ16_SET_DMAINTR ;
 int snd_sbdsp_command (struct snd_sb*,unsigned char) ;

__attribute__((used)) static int jazz16_configure_board(struct snd_sb *chip, int mpu_irq)
{
 static unsigned char jazz_irq_bits[] = { 0, 0, 2, 3, 0, 1, 0, 4,
       0, 2, 5, 0, 0, 0, 0, 6 };
 static unsigned char jazz_dma_bits[] = { 0, 1, 0, 2, 0, 3, 0, 4 };

 if (jazz_dma_bits[chip->dma8] == 0 ||
     jazz_dma_bits[chip->dma16] == 0 ||
     jazz_irq_bits[chip->irq] == 0)
  return -EINVAL;

 if (!snd_sbdsp_command(chip, SB_JAZZ16_SET_DMAINTR))
  return -EBUSY;

 if (!snd_sbdsp_command(chip,
          jazz_dma_bits[chip->dma8] |
          (jazz_dma_bits[chip->dma16] << 4)))
  return -EBUSY;

 if (!snd_sbdsp_command(chip,
          jazz_irq_bits[chip->irq] |
          (jazz_irq_bits[mpu_irq] << 4)))
  return -EBUSY;

 return 0;
}
