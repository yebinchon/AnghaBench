
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int count; int type; } ;
struct rt5645_eq_param_s {int dummy; } ;


 int RT5645_HWEQ_NUM ;
 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int rt5645_hweq_info(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 uinfo->count = RT5645_HWEQ_NUM * sizeof(struct rt5645_eq_param_s);

 return 0;
}
