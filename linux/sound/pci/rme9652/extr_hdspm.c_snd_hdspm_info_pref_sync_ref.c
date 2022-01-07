
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hdspm {int texts_autosync; int texts_autosync_items; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,int ) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdspm_info_pref_sync_ref(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);

 snd_ctl_enum_info(uinfo, 1, hdspm->texts_autosync_items, hdspm->texts_autosync);

 return 0;
}
