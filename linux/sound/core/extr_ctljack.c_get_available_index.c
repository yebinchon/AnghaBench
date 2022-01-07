
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_id {int index; scalar_t__ numid; int name; int iface; } ;
struct snd_card {int dummy; } ;
typedef int sid ;


 int SNDRV_CTL_ELEM_IFACE_CARD ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 scalar_t__ snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int get_available_index(struct snd_card *card, const char *name)
{
 struct snd_ctl_elem_id sid;

 memset(&sid, 0, sizeof(sid));

 sid.index = 0;
 sid.iface = SNDRV_CTL_ELEM_IFACE_CARD;
 strlcpy(sid.name, name, sizeof(sid.name));

 while (snd_ctl_find_id(card, &sid)) {
  sid.index++;

  sid.numid = 0;
 }

 return sid.index;
}
