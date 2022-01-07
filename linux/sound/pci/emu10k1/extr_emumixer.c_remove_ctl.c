
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_id {int iface; int name; } ;
struct snd_card {int dummy; } ;
typedef int id ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int snd_ctl_remove_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static int remove_ctl(struct snd_card *card, const char *name)
{
 struct snd_ctl_elem_id id;
 memset(&id, 0, sizeof(id));
 strcpy(id.name, name);
 id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 return snd_ctl_remove_id(card, &id);
}
