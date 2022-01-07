
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int sta350_coefficient_info(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 int numcoef = kcontrol->private_value >> 16;
 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 uinfo->count = 3 * numcoef;
 return 0;
}
