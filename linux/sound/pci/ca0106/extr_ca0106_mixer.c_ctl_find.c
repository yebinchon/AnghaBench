
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int iface; int name; } ;
struct snd_card {int dummy; } ;
typedef int sid ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static struct snd_kcontrol *ctl_find(struct snd_card *card, const char *name)
{
 struct snd_ctl_elem_id sid;
 memset(&sid, 0, sizeof(sid));

 strcpy(sid.name, name);
 sid.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 return snd_ctl_find_id(card, &sid);
}
