
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int dev; } ;
typedef int s16 ;
typedef int __be16 ;


 int EINVAL ;
 int abs (int ) ;
 int be16_to_cpu (int ) ;
 int dev_err (int ,char*) ;
 int snd_soc_bytes_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

int madera_lhpf_coeff_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera *madera = priv->madera;
 __be16 *data = (__be16 *)ucontrol->value.bytes.data;
 s16 val = be16_to_cpu(*data);

 if (abs(val) >= 4096) {
  dev_err(madera->dev, "Rejecting unstable LHPF coefficients\n");
  return -EINVAL;
 }

 return snd_soc_bytes_put(kcontrol, ucontrol);
}
