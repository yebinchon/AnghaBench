
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct soc_enum {unsigned int items; unsigned int shift_l; unsigned int mask; int reg; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_8__ {int name; } ;
struct snd_kcontrol {TYPE_4__ id; scalar_t__ private_value; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {int rate_lock; TYPE_3__* madera; } ;
struct TYPE_7__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int dev_warn (int ,char*,int ,...) ;
 int madera_can_change_grp_rate (struct madera_priv*,int ) ;
 int madera_spin_sysclk (struct madera_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read (struct snd_soc_component*,int ,unsigned int*) ;
 unsigned int snd_soc_enum_item_to_val (struct soc_enum*,unsigned int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

int madera_rate_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 unsigned int item = ucontrol->value.enumerated.item[0];
 unsigned int val;
 int ret;

 if (item >= e->items)
  return -EINVAL;





 mutex_lock(&priv->rate_lock);

 ret = snd_soc_component_read(component, e->reg, &val);
 if (ret < 0) {
  dev_warn(priv->madera->dev, "Failed to read 0x%x (%d)\n",
    e->reg, ret);
  goto out;
 }
 val >>= e->shift_l;
 val &= e->mask;
 if (snd_soc_enum_item_to_val(e, item) == val) {
  ret = 0;
  goto out;
 }

 if (!madera_can_change_grp_rate(priv, e->reg)) {
  dev_warn(priv->madera->dev,
    "Cannot change '%s' while in use by active audio paths\n",
    kcontrol->id.name);
  ret = -EBUSY;
 } else {

  madera_spin_sysclk(priv);
  ret = snd_soc_put_enum_double(kcontrol, ucontrol);
  madera_spin_sysclk(priv);
 }
out:
 mutex_unlock(&priv->rate_lock);

 return ret;
}
