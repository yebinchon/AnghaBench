
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ac97_pcm {TYPE_2__* r; } ;
struct TYPE_4__ {TYPE_1__** codec; } ;
struct TYPE_3__ {unsigned int* rates; } ;







 int AC97_RATES_ADC ;
 int AC97_RATES_FRONT_DAC ;
 int AC97_RATES_LFE_DAC ;
 int AC97_RATES_MIC_ADC ;
 int AC97_RATES_SPDIF ;
 int AC97_RATES_SURR_DAC ;
 unsigned int SNDRV_PCM_RATE_64000 ;
 unsigned int SNDRV_PCM_RATE_88200 ;
 unsigned int SNDRV_PCM_RATE_96000 ;
 unsigned char get_slot_reg (struct ac97_pcm*,unsigned int,int,int) ;

__attribute__((used)) static unsigned int get_rates(struct ac97_pcm *pcm, unsigned int cidx, unsigned short slots, int dbl)
{
 int i, idx;
 unsigned int rates = ~0;
 unsigned char reg;

 for (i = 3; i < 12; i++) {
  if (!(slots & (1 << i)))
   continue;
  reg = get_slot_reg(pcm, cidx, i, dbl);
  switch (reg) {
  case 132: idx = AC97_RATES_FRONT_DAC; break;
  case 128: idx = AC97_RATES_SURR_DAC; break;
  case 131: idx = AC97_RATES_LFE_DAC; break;
  case 130: idx = AC97_RATES_ADC; break;
  case 129: idx = AC97_RATES_MIC_ADC; break;
  default: idx = AC97_RATES_SPDIF; break;
  }
  rates &= pcm->r[dbl].codec[cidx]->rates[idx];
 }
 if (!dbl)
  rates &= ~(SNDRV_PCM_RATE_64000 | SNDRV_PCM_RATE_88200 |
      SNDRV_PCM_RATE_96000);
 return rates;
}
