
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mop500_ab8500_drvdata {unsigned int mclk_sel; } ;


 int EINVAL ;
 scalar_t__ MCLK_ULPCLK ;
 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct mop500_ab8500_drvdata* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int mclk_input_control_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);
 struct mop500_ab8500_drvdata *drvdata =
    snd_soc_card_get_drvdata(card);
 unsigned int val = ucontrol->value.enumerated.item[0];

 if (val > (unsigned int)MCLK_ULPCLK)
  return -EINVAL;
 if (drvdata->mclk_sel == val)
  return 0;

 drvdata->mclk_sel = val;

 return 1;
}
