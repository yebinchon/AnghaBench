
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct sigmadsp_control {int cached; int num_bytes; int cache; int addr; } ;
struct sigmadsp {int lock; } ;


 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sigmadsp_read (struct sigmadsp*,int ,int ,int ) ;
 struct sigmadsp* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sigmadsp_ctrl_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct sigmadsp_control *ctrl = (void *)kcontrol->private_value;
 struct sigmadsp *sigmadsp = snd_kcontrol_chip(kcontrol);
 int ret = 0;

 mutex_lock(&sigmadsp->lock);

 if (!ctrl->cached) {
  ret = sigmadsp_read(sigmadsp, ctrl->addr, ctrl->cache,
   ctrl->num_bytes);
 }

 if (ret == 0) {
  ctrl->cached = 1;
  memcpy(ucontrol->value.bytes.data, ctrl->cache,
   ctrl->num_bytes);
 }

 mutex_unlock(&sigmadsp->lock);

 return ret;
}
