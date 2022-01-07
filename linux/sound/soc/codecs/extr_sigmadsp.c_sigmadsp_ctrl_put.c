
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct snd_kcontrol {TYPE_3__* vd; scalar_t__ private_value; } ;
struct TYPE_4__ {int * data; } ;
struct TYPE_5__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct sigmadsp_control {int cached; int num_bytes; int cache; } ;
struct sigmadsp {int lock; } ;
struct TYPE_6__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int memcpy (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sigmadsp_ctrl_write (struct sigmadsp*,struct sigmadsp_control*,int *) ;
 struct sigmadsp* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sigmadsp_ctrl_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct sigmadsp_control *ctrl = (void *)kcontrol->private_value;
 struct sigmadsp *sigmadsp = snd_kcontrol_chip(kcontrol);
 uint8_t *data;
 int ret = 0;

 mutex_lock(&sigmadsp->lock);

 data = ucontrol->value.bytes.data;

 if (!(kcontrol->vd[0].access & SNDRV_CTL_ELEM_ACCESS_INACTIVE))
  ret = sigmadsp_ctrl_write(sigmadsp, ctrl, data);

 if (ret == 0) {
  memcpy(ctrl->cache, data, ctrl->num_bytes);
  ctrl->cached = 1;
 }

 mutex_unlock(&sigmadsp->lock);

 return ret;
}
