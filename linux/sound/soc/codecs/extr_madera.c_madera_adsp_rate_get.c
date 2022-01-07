
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_enum {int shift_l; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {unsigned int* adsp_rate_cache; int rate_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_enum_val_to_item (struct soc_enum*,unsigned int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int madera_adsp_rate_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 unsigned int cached_rate;
 const int adsp_num = e->shift_l;
 int item;

 mutex_lock(&priv->rate_lock);
 cached_rate = priv->adsp_rate_cache[adsp_num];
 mutex_unlock(&priv->rate_lock);

 item = snd_soc_enum_val_to_item(e, cached_rate);
 ucontrol->value.enumerated.item[0] = item;

 return 0;
}
