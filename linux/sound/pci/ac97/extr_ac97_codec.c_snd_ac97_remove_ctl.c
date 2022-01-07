
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ctl_elem_id {int iface; int name; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
typedef int id ;
struct TYPE_2__ {int card; } ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int set_ctl_name (int ,char const*,char const*) ;
 int snd_ctl_remove_id (int ,struct snd_ctl_elem_id*) ;

__attribute__((used)) static int snd_ac97_remove_ctl(struct snd_ac97 *ac97, const char *name,
          const char *suffix)
{
 struct snd_ctl_elem_id id;
 memset(&id, 0, sizeof(id));
 set_ctl_name(id.name, name, suffix);
 id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 return snd_ctl_remove_id(ac97->bus->card, &id);
}
