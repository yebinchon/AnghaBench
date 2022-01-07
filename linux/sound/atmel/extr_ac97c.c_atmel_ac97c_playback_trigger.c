
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct atmel_ac97c {int opened; scalar_t__ regs; } ;


 unsigned long AC97C_CMR_CENA ;
 unsigned long AC97C_CSR_ENDTX ;
 scalar_t__ ATMEL_PDC_PTCR ;
 unsigned long ATMEL_PDC_TXTDIS ;
 unsigned long ATMEL_PDC_TXTEN ;
 int CAMR ;
 int EINVAL ;






 unsigned long ac97c_readl (struct atmel_ac97c*,int ) ;
 int ac97c_writel (struct atmel_ac97c*,int ,unsigned long) ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int
atmel_ac97c_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);
 unsigned long camr, ptcr = 0;

 camr = ac97c_readl(chip, CAMR);

 switch (cmd) {
 case 132:
 case 131:
 case 130:
  ptcr = ATMEL_PDC_TXTEN;
  camr |= AC97C_CMR_CENA | AC97C_CSR_ENDTX;
  break;
 case 133:
 case 128:
 case 129:
  ptcr |= ATMEL_PDC_TXTDIS;
  if (chip->opened <= 1)
   camr &= ~AC97C_CMR_CENA;
  break;
 default:
  return -EINVAL;
 }

 ac97c_writel(chip, CAMR, camr);
 writel(ptcr, chip->regs + ATMEL_PDC_PTCR);
 return 0;
}
