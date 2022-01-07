
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs4281_dma {int valDCR; int valFCR; int valDMR; int regDCR; int regFCR; int regDMR; } ;
struct cs4281 {int reg_lock; } ;
struct TYPE_2__ {struct cs4281_dma* private_data; } ;


 int BA0_DCR_MSK ;
 int BA0_DMR_DMA ;
 int BA0_DMR_POLL ;
 int BA0_FCR0 ;
 int BA0_FCR_FEN ;
 int EINVAL ;






 int snd_cs4281_pokeBA0 (struct cs4281*,int ,int) ;
 struct cs4281* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_cs4281_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct cs4281_dma *dma = substream->runtime->private_data;
 struct cs4281 *chip = snd_pcm_substream_chip(substream);

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 133:
  dma->valDCR |= BA0_DCR_MSK;
  dma->valFCR |= BA0_FCR_FEN;
  break;
 case 132:
  dma->valDCR &= ~BA0_DCR_MSK;
  dma->valFCR &= ~BA0_FCR_FEN;
  break;
 case 130:
 case 131:
  snd_cs4281_pokeBA0(chip, dma->regDMR, dma->valDMR & ~BA0_DMR_DMA);
  dma->valDMR |= BA0_DMR_DMA;
  dma->valDCR &= ~BA0_DCR_MSK;
  dma->valFCR |= BA0_FCR_FEN;
  break;
 case 129:
 case 128:
  dma->valDMR &= ~(BA0_DMR_DMA|BA0_DMR_POLL);
  dma->valDCR |= BA0_DCR_MSK;
  dma->valFCR &= ~BA0_FCR_FEN;

  if (dma->regFCR != BA0_FCR0)
   dma->valFCR &= ~BA0_FCR_FEN;
  break;
 default:
  spin_unlock(&chip->reg_lock);
  return -EINVAL;
 }
 snd_cs4281_pokeBA0(chip, dma->regDMR, dma->valDMR);
 snd_cs4281_pokeBA0(chip, dma->regFCR, dma->valFCR);
 snd_cs4281_pokeBA0(chip, dma->regDCR, dma->valDCR);
 spin_unlock(&chip->reg_lock);
 return 0;
}
