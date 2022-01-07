
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_bytes_ext {int max; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;
struct coeff_ram_ctl {struct soc_bytes_ext bytes_ext; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int bytes_info_ext(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *ucontrol)
{
 struct coeff_ram_ctl *ctl =
  (struct coeff_ram_ctl *)kcontrol->private_value;
 struct soc_bytes_ext *params = &ctl->bytes_ext;

 ucontrol->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 ucontrol->count = params->max;

 return 0;
}
