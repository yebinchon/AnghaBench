
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_akm4xxx {int dummy; } ;


 int AK_GET_CHIP (int ) ;
 scalar_t__ AK_GET_INVERT (int ) ;
 scalar_t__ AK_GET_IPGA (int ) ;
 unsigned int AK_GET_MASK (int ) ;
 scalar_t__ AK_GET_NEEDSMSB (int ) ;
 scalar_t__ AK_GET_VOL_CVT (int ) ;
 unsigned char snd_akm4xxx_get_vol (struct snd_akm4xxx*,int,int) ;
 int snd_akm4xxx_set_vol (struct snd_akm4xxx*,int,int,unsigned char) ;
 int snd_akm4xxx_write (struct snd_akm4xxx*,int,int,unsigned char) ;
 struct snd_akm4xxx* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char* vol_cvt_datt ;

__attribute__((used)) static int put_ak_reg(struct snd_kcontrol *kcontrol, int addr,
        unsigned char nval)
{
 struct snd_akm4xxx *ak = snd_kcontrol_chip(kcontrol);
 unsigned int mask = AK_GET_MASK(kcontrol->private_value);
 int chip = AK_GET_CHIP(kcontrol->private_value);

 if (snd_akm4xxx_get_vol(ak, chip, addr) == nval)
  return 0;

 snd_akm4xxx_set_vol(ak, chip, addr, nval);
 if (AK_GET_VOL_CVT(kcontrol->private_value) && nval < 128)
  nval = vol_cvt_datt[nval];
 if (AK_GET_IPGA(kcontrol->private_value) && nval >= 128)
  nval++;
 if (AK_GET_INVERT(kcontrol->private_value))
  nval = mask - nval;
 if (AK_GET_NEEDSMSB(kcontrol->private_value))
  nval |= 0x80;


 snd_akm4xxx_write(ak, chip, addr, nval);
 return 1;
}
