
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ak4114 {int dummy; } ;


 scalar_t__ AK4114_REG_QSUB_ADDR ;
 unsigned int AK4114_REG_QSUB_SIZE ;
 int reg_read (struct ak4114*,scalar_t__) ;
 struct ak4114* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ak4114_spdif_qget(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct ak4114 *chip = snd_kcontrol_chip(kcontrol);
 unsigned i;

 for (i = 0; i < AK4114_REG_QSUB_SIZE; i++)
  ucontrol->value.bytes.data[i] = reg_read(chip, AK4114_REG_QSUB_ADDR + i);
 return 0;
}
