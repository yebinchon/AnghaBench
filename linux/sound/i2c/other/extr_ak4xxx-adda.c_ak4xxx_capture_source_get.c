
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {unsigned char* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct snd_akm4xxx {int dummy; } ;


 int AK_GET_ADDR (int ) ;
 int AK_GET_CHIP (int ) ;
 int AK_GET_MASK (int ) ;
 int snd_akm4xxx_get (struct snd_akm4xxx*,int,int) ;
 struct snd_akm4xxx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ak4xxx_capture_source_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_akm4xxx *ak = snd_kcontrol_chip(kcontrol);
 int chip = AK_GET_CHIP(kcontrol->private_value);
 int addr = AK_GET_ADDR(kcontrol->private_value);
 int mask = AK_GET_MASK(kcontrol->private_value);
 unsigned char val;

 val = snd_akm4xxx_get(ak, chip, addr) & mask;
 ucontrol->value.enumerated.item[0] = val;
 return 0;
}
