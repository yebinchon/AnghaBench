
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wm_coeff_ctl {int flags; char* cache; TYPE_3__* dsp; int len; scalar_t__ enabled; } ;
struct soc_bytes_ext {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {char* data; } ;
struct TYPE_5__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int pwr_lock; scalar_t__ running; } ;


 int EPERM ;
 int WMFW_CTL_FLAG_VOLATILE ;
 struct wm_coeff_ctl* bytes_ext_to_ctl (struct soc_bytes_ext*) ;
 int memcpy (char*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm_coeff_read_control (struct wm_coeff_ctl*,char*,int ) ;

__attribute__((used)) static int wm_coeff_get(struct snd_kcontrol *kctl,
   struct snd_ctl_elem_value *ucontrol)
{
 struct soc_bytes_ext *bytes_ext =
  (struct soc_bytes_ext *)kctl->private_value;
 struct wm_coeff_ctl *ctl = bytes_ext_to_ctl(bytes_ext);
 char *p = ucontrol->value.bytes.data;
 int ret = 0;

 mutex_lock(&ctl->dsp->pwr_lock);

 if (ctl->flags & WMFW_CTL_FLAG_VOLATILE) {
  if (ctl->enabled && ctl->dsp->running)
   ret = wm_coeff_read_control(ctl, p, ctl->len);
  else
   ret = -EPERM;
 } else {
  if (!ctl->flags && ctl->enabled && ctl->dsp->running)
   ret = wm_coeff_read_control(ctl, ctl->cache, ctl->len);

  memcpy(p, ctl->cache, ctl->len);
 }

 mutex_unlock(&ctl->dsp->pwr_lock);

 return ret;
}
