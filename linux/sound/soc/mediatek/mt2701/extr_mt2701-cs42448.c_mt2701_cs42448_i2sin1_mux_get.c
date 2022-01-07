
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mt2701_cs42448_private {int i2s1_in_mux; } ;


 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct mt2701_cs42448_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int mt2701_cs42448_i2sin1_mux_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);
 struct mt2701_cs42448_private *priv = snd_soc_card_get_drvdata(card);

 ucontrol->value.integer.value[0] = priv->i2s1_in_mux;
 return 0;
}
