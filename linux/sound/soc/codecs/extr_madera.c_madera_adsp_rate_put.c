
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct soc_enum {int shift_l; unsigned int const items; int * values; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_10__ {int name; } ;
struct snd_kcontrol {TYPE_5__ id; scalar_t__ private_value; } ;
struct TYPE_6__ {unsigned int* item; } ;
struct TYPE_7__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {int rate_lock; int * adsp_rate_cache; TYPE_4__* madera; TYPE_3__* adsp; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int base; } ;


 int EBUSY ;
 int EINVAL ;
 int dev_warn (int ,char*,int ) ;
 int madera_can_change_grp_rate (struct madera_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int madera_adsp_rate_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 const int adsp_num = e->shift_l;
 const unsigned int item = ucontrol->value.enumerated.item[0];
 int ret;

 if (item >= e->items)
  return -EINVAL;






 mutex_lock(&priv->rate_lock);

 if (!madera_can_change_grp_rate(priv, priv->adsp[adsp_num].base)) {
  dev_warn(priv->madera->dev,
    "Cannot change '%s' while in use by active audio paths\n",
    kcontrol->id.name);
  ret = -EBUSY;
 } else {

  priv->adsp_rate_cache[adsp_num] = e->values[item];
  ret = 0;
 }

 mutex_unlock(&priv->rate_lock);

 return ret;
}
