
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int flags; int* regs; int scaps; int ext_id; TYPE_1__* bus; } ;
struct TYPE_2__ {unsigned int clock; } ;


 int AC97_DOUBLE_RATE ;
 int AC97_EA_DRA ;
 int AC97_EA_VRA ;
 int AC97_EA_VRM ;
 int AC97_EI_DRA ;
 size_t AC97_EXTENDED_STATUS ;
 int AC97_GENERAL_PURPOSE ;
 int AC97_GP_DRSS_78 ;
 int AC97_GP_DRSS_MASK ;





 int AC97_SCAP_CENTER_LFE_DAC ;
 int AC97_SCAP_SURROUND_DAC ;

 int EINVAL ;
 int set_spdif_rate (struct snd_ac97*,unsigned int) ;
 int snd_ac97_read (struct snd_ac97*,int) ;
 int snd_ac97_update (struct snd_ac97*,int,unsigned int) ;
 int snd_ac97_update_bits (struct snd_ac97*,int,int ,int ) ;
 int snd_ac97_update_power (struct snd_ac97*,int,int) ;

int snd_ac97_set_rate(struct snd_ac97 *ac97, int reg, unsigned int rate)
{
 int dbl;
 unsigned int tmp;

 dbl = rate > 48000;
 if (dbl) {
  if (!(ac97->flags & AC97_DOUBLE_RATE))
   return -EINVAL;
  if (reg != 133)
   return -EINVAL;
 }

 snd_ac97_update_power(ac97, reg, 1);
 switch (reg) {
 case 130:
  if ((ac97->regs[AC97_EXTENDED_STATUS] & AC97_EA_VRM) == 0)
   if (rate != 48000)
    return -EINVAL;
  break;
 case 133:
 case 131:
  if ((ac97->regs[AC97_EXTENDED_STATUS] & AC97_EA_VRA) == 0)
   if (rate != 48000 && rate != 96000)
    return -EINVAL;
  break;
 case 129:
  if (! (ac97->scaps & AC97_SCAP_SURROUND_DAC))
   return -EINVAL;
  break;
 case 132:
  if (! (ac97->scaps & AC97_SCAP_CENTER_LFE_DAC))
   return -EINVAL;
  break;
 case 128:

  return set_spdif_rate(ac97, rate);
 default:
  return -EINVAL;
 }
 if (dbl)
  rate /= 2;
 tmp = (rate * ac97->bus->clock) / 48000;
 if (tmp > 65535)
  return -EINVAL;
 if ((ac97->ext_id & AC97_EI_DRA) && reg == 133)
  snd_ac97_update_bits(ac97, AC97_EXTENDED_STATUS,
         AC97_EA_DRA, dbl ? AC97_EA_DRA : 0);
 snd_ac97_update(ac97, reg, tmp & 0xffff);
 snd_ac97_read(ac97, reg);
 if ((ac97->ext_id & AC97_EI_DRA) && reg == 133) {



  snd_ac97_update_bits(ac97, AC97_GENERAL_PURPOSE,
         AC97_GP_DRSS_MASK,
         dbl ? AC97_GP_DRSS_78 : 0);
  snd_ac97_read(ac97, AC97_GENERAL_PURPOSE);
 }
 return 0;
}
