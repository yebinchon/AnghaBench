
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_bytes {int num_regs; } ;
struct snd_soc_component {int val_bytes; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_soc_bytes_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_bytes *params = (void *)kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 uinfo->count = params->num_regs * component->val_bytes;

 return 0;
}
