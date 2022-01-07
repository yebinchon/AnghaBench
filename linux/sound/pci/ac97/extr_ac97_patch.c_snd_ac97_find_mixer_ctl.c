
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int name; int iface; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
typedef int id ;
struct TYPE_2__ {int card; } ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 struct snd_kcontrol* snd_ctl_find_id (int ,struct snd_ctl_elem_id*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static struct snd_kcontrol *snd_ac97_find_mixer_ctl(struct snd_ac97 *ac97,
          const char *name)
{
 struct snd_ctl_elem_id id;
 memset(&id, 0, sizeof(id));
 id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 strcpy(id.name, name);
 return snd_ctl_find_id(ac97->bus->card, &id);
}
