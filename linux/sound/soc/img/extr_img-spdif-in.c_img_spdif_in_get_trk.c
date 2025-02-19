
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct img_spdif_in {int trk; } ;


 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct img_spdif_in* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int img_spdif_in_get_trk(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct img_spdif_in *spdif = snd_soc_dai_get_drvdata(cpu_dai);

 ucontrol->value.integer.value[0] = spdif->trk;

 return 0;
}
