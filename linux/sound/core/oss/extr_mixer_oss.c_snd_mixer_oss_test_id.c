
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss {struct snd_card* card; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int index; int name; int iface; } ;
struct snd_card {int dummy; } ;
typedef int id ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static struct snd_kcontrol *snd_mixer_oss_test_id(struct snd_mixer_oss *mixer, const char *name, int index)
{
 struct snd_card *card = mixer->card;
 struct snd_ctl_elem_id id;

 memset(&id, 0, sizeof(id));
 id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 strlcpy(id.name, name, sizeof(id.name));
 id.index = index;
 return snd_ctl_find_id(card, &id);
}
