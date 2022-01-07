
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_algo_control {int max; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int sst_algo_bytes_ctl_info(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 struct sst_algo_control *bc = (void *)kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 uinfo->count = bc->max;

 return 0;
}
