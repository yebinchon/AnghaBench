
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int BASE2ADDR (int) ;
 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_pmac_burgundy_rcw (struct snd_pmac*,unsigned int) ;
 int snd_pmac_burgundy_wcw (struct snd_pmac*,unsigned int,int) ;

__attribute__((used)) static int snd_pmac_burgundy_put_switch_w(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 unsigned int addr = BASE2ADDR((kcontrol->private_value >> 16) & 0xff);
 int lmask = 1 << (kcontrol->private_value & 0xff);
 int rmask = 1 << ((kcontrol->private_value >> 8) & 0xff);
 int stereo = (kcontrol->private_value >> 24) & 1;
 int val, oval;
 oval = snd_pmac_burgundy_rcw(chip, addr);
 val = oval & ~(lmask | (stereo ? rmask : 0));
 if (ucontrol->value.integer.value[0])
  val |= lmask;
 if (stereo && ucontrol->value.integer.value[1])
  val |= rmask;
 snd_pmac_burgundy_wcw(chip, addr, val);
 return val != oval;
}
