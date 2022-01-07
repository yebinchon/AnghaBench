
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta350_priv {int* coef_shadow; int regmap; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 scalar_t__ STA350_B1CF1 ;
 scalar_t__ STA350_CFADDR2 ;
 scalar_t__ STA350_CFUD ;
 int STA350_COEF_COUNT ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 int regmap_write (int ,scalar_t__,unsigned int) ;
 struct sta350_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int sta350_coefficient_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct sta350_priv *sta350 = snd_soc_component_get_drvdata(component);
 int numcoef = kcontrol->private_value >> 16;
 int index = kcontrol->private_value & 0xffff;
 unsigned int cfud;
 int i;


 regmap_read(sta350->regmap, STA350_CFUD, &cfud);
 cfud &= 0xf0;




 regmap_write(sta350->regmap, STA350_CFUD, cfud);

 regmap_write(sta350->regmap, STA350_CFADDR2, index);
 for (i = 0; i < numcoef && (index + i < STA350_COEF_COUNT); i++)
  sta350->coef_shadow[index + i] =
     (ucontrol->value.bytes.data[3 * i] << 16)
   | (ucontrol->value.bytes.data[3 * i + 1] << 8)
   | (ucontrol->value.bytes.data[3 * i + 2]);
 for (i = 0; i < 3 * numcoef; i++)
  regmap_write(sta350->regmap, STA350_B1CF1 + i,
        ucontrol->value.bytes.data[i]);
 if (numcoef == 1)
  regmap_write(sta350->regmap, STA350_CFUD, cfud | 0x01);
 else if (numcoef == 5)
  regmap_write(sta350->regmap, STA350_CFUD, cfud | 0x02);
 else
  return -EINVAL;

 return 0;
}
