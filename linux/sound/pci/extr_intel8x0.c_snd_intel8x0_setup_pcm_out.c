
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int rate; int channels; int sample_bits; } ;
struct intel8x0 {int device_type; int reg_lock; } ;


 int ALI_SCR ;

 int DEVICE_INTEL_ICH4 ;
 int DEVICE_NFORCE ;

 int GLOB_CNT ;
 int ICHREG (int ) ;
 unsigned int ICH_ALI_SC_PCM_246_MASK ;
 unsigned int ICH_ALI_SC_PCM_4 ;
 unsigned int ICH_ALI_SC_PCM_6 ;
 unsigned int ICH_PCM_20BIT ;
 unsigned int ICH_PCM_246_MASK ;
 unsigned int ICH_PCM_4 ;
 unsigned int ICH_PCM_6 ;
 unsigned int ICH_PCM_8 ;
 unsigned int ICH_SIS_PCM_246_MASK ;
 unsigned int ICH_SIS_PCM_4 ;
 unsigned int ICH_SIS_PCM_6 ;
 unsigned int igetdword (struct intel8x0*,int ) ;
 int iputdword (struct intel8x0*,int ,unsigned int) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void snd_intel8x0_setup_pcm_out(struct intel8x0 *chip,
           struct snd_pcm_runtime *runtime)
{
 unsigned int cnt;
 int dbl = runtime->rate > 48000;

 spin_lock_irq(&chip->reg_lock);
 switch (chip->device_type) {
 case 129:
  cnt = igetdword(chip, ICHREG(ALI_SCR));
  cnt &= ~ICH_ALI_SC_PCM_246_MASK;
  if (runtime->channels == 4 || dbl)
   cnt |= ICH_ALI_SC_PCM_4;
  else if (runtime->channels == 6)
   cnt |= ICH_ALI_SC_PCM_6;
  iputdword(chip, ICHREG(ALI_SCR), cnt);
  break;
 case 128:
  cnt = igetdword(chip, ICHREG(GLOB_CNT));
  cnt &= ~ICH_SIS_PCM_246_MASK;
  if (runtime->channels == 4 || dbl)
   cnt |= ICH_SIS_PCM_4;
  else if (runtime->channels == 6)
   cnt |= ICH_SIS_PCM_6;
  iputdword(chip, ICHREG(GLOB_CNT), cnt);
  break;
 default:
  cnt = igetdword(chip, ICHREG(GLOB_CNT));
  cnt &= ~(ICH_PCM_246_MASK | ICH_PCM_20BIT);
  if (runtime->channels == 4 || dbl)
   cnt |= ICH_PCM_4;
  else if (runtime->channels == 6)
   cnt |= ICH_PCM_6;
  else if (runtime->channels == 8)
   cnt |= ICH_PCM_8;
  if (chip->device_type == DEVICE_NFORCE) {



   if (cnt & ICH_PCM_246_MASK) {
    iputdword(chip, ICHREG(GLOB_CNT), cnt & ~ICH_PCM_246_MASK);
    spin_unlock_irq(&chip->reg_lock);
    msleep(50);
    spin_lock_irq(&chip->reg_lock);
   }
  } else if (chip->device_type == DEVICE_INTEL_ICH4) {
   if (runtime->sample_bits > 16)
    cnt |= ICH_PCM_20BIT;
  }
  iputdword(chip, ICHREG(GLOB_CNT), cnt);
  break;
 }
 spin_unlock_irq(&chip->reg_lock);
}
