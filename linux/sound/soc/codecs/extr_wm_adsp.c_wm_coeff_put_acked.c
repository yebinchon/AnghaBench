
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wm_coeff_ctl {TYPE_2__* dsp; scalar_t__ enabled; } ;
struct soc_bytes_ext {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_6__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct TYPE_5__ {int pwr_lock; scalar_t__ running; } ;


 int EPERM ;
 struct wm_coeff_ctl* bytes_ext_to_ctl (struct soc_bytes_ext*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm_coeff_write_acked_control (struct wm_coeff_ctl*,unsigned int) ;

__attribute__((used)) static int wm_coeff_put_acked(struct snd_kcontrol *kctl,
         struct snd_ctl_elem_value *ucontrol)
{
 struct soc_bytes_ext *bytes_ext =
  (struct soc_bytes_ext *)kctl->private_value;
 struct wm_coeff_ctl *ctl = bytes_ext_to_ctl(bytes_ext);
 unsigned int val = ucontrol->value.integer.value[0];
 int ret;

 if (val == 0)
  return 0;

 mutex_lock(&ctl->dsp->pwr_lock);

 if (ctl->enabled && ctl->dsp->running)
  ret = wm_coeff_write_acked_control(ctl, val);
 else
  ret = -EPERM;

 mutex_unlock(&ctl->dsp->pwr_lock);

 return ret;
}
