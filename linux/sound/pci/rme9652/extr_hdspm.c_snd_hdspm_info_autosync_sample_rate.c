
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ENUMERATED_CTL_INFO (struct snd_ctl_elem_info*,int ) ;
 int texts_freq ;

__attribute__((used)) static int snd_hdspm_info_autosync_sample_rate(struct snd_kcontrol *kcontrol,
            struct snd_ctl_elem_info *uinfo)
{
 ENUMERATED_CTL_INFO(uinfo, texts_freq);
 return 0;
}
