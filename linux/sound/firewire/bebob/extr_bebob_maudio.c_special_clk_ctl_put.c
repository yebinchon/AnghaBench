
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct special_params {int clk_lock; int dig_out_fmt; int dig_in_fmt; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct snd_bebob {int mutex; struct special_params* maudio_special_quirk; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int avc_maudio_set_special_clk (struct snd_bebob*,int,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_bebob* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int special_clk_types ;

__attribute__((used)) static int special_clk_ctl_put(struct snd_kcontrol *kctl,
          struct snd_ctl_elem_value *uval)
{
 struct snd_bebob *bebob = snd_kcontrol_chip(kctl);
 struct special_params *params = bebob->maudio_special_quirk;
 int err, id;

 id = uval->value.enumerated.item[0];
 if (id >= ARRAY_SIZE(special_clk_types))
  return -EINVAL;

 mutex_lock(&bebob->mutex);

 err = avc_maudio_set_special_clk(bebob, id,
      params->dig_in_fmt,
      params->dig_out_fmt,
      params->clk_lock);
 mutex_unlock(&bebob->mutex);

 if (err >= 0)
  err = 1;

 return err;
}
