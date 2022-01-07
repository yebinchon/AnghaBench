
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int HDMI_MAX_ELD_BYTES ;
 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int had_ctl_eld_info(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 uinfo->count = HDMI_MAX_ELD_BYTES;
 return 0;
}
