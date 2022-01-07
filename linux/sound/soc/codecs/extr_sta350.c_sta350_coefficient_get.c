
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta350_priv {int coeff_lock; int regmap; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 scalar_t__ STA350_B1CF1 ;
 scalar_t__ STA350_CFADDR2 ;
 scalar_t__ STA350_CFUD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 int regmap_write (int ,scalar_t__,unsigned int) ;
 struct sta350_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int sta350_coefficient_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct sta350_priv *sta350 = snd_soc_component_get_drvdata(component);
 int numcoef = kcontrol->private_value >> 16;
 int index = kcontrol->private_value & 0xffff;
 unsigned int cfud, val;
 int i, ret = 0;

 mutex_lock(&sta350->coeff_lock);


 regmap_read(sta350->regmap, STA350_CFUD, &cfud);
 cfud &= 0xf0;




 regmap_write(sta350->regmap, STA350_CFUD, cfud);

 regmap_write(sta350->regmap, STA350_CFADDR2, index);
 if (numcoef == 1) {
  regmap_write(sta350->regmap, STA350_CFUD, cfud | 0x04);
 } else if (numcoef == 5) {
  regmap_write(sta350->regmap, STA350_CFUD, cfud | 0x08);
 } else {
  ret = -EINVAL;
  goto exit_unlock;
 }

 for (i = 0; i < 3 * numcoef; i++) {
  regmap_read(sta350->regmap, STA350_B1CF1 + i, &val);
  ucontrol->value.bytes.data[i] = val;
 }

exit_unlock:
 mutex_unlock(&sta350->coeff_lock);

 return ret;
}
