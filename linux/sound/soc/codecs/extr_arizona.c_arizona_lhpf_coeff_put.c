
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ bytes; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct arizona {int dev; } ;
typedef int s16 ;
typedef int __be16 ;
struct TYPE_4__ {int parent; } ;


 int EINVAL ;
 int abs (int ) ;
 int be16_to_cpu (int ) ;
 int dev_err (int ,char*) ;
 struct arizona* dev_get_drvdata (int ) ;
 int snd_soc_bytes_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

int arizona_lhpf_coeff_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct arizona *arizona = dev_get_drvdata(component->dev->parent);
 __be16 *data = (__be16 *)ucontrol->value.bytes.data;
 s16 val = be16_to_cpu(*data);

 if (abs(val) >= 4096) {
  dev_err(arizona->dev, "Rejecting unstable LHPF coefficients\n");
  return -EINVAL;
 }

 return snd_soc_bytes_put(kcontrol, ucontrol);
}
