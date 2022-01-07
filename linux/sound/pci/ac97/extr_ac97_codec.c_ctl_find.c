
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int iface; int name; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
typedef int sid ;
struct TYPE_2__ {int card; } ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int set_ctl_name (int ,char const*,char const*) ;
 struct snd_kcontrol* snd_ctl_find_id (int ,struct snd_ctl_elem_id*) ;

__attribute__((used)) static struct snd_kcontrol *ctl_find(struct snd_ac97 *ac97, const char *name, const char *suffix)
{
 struct snd_ctl_elem_id sid;
 memset(&sid, 0, sizeof(sid));
 set_ctl_name(sid.name, name, suffix);
 sid.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 return snd_ctl_find_id(ac97->bus->card, &sid);
}
