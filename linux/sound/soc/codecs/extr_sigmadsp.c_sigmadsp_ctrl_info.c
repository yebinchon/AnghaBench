
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;
struct sigmadsp_control {int num_bytes; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int sigmadsp_ctrl_info(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *info)
{
 struct sigmadsp_control *ctrl = (void *)kcontrol->private_value;

 info->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 info->count = ctrl->num_bytes;

 return 0;
}
