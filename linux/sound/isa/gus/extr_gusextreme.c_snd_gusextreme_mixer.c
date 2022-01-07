
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_id {int name; int iface; } ;
struct snd_card {int dummy; } ;
typedef int id2 ;
typedef int id1 ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int snd_ctl_rename_id (struct snd_card*,struct snd_ctl_elem_id*,struct snd_ctl_elem_id*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_gusextreme_mixer(struct snd_card *card)
{
 struct snd_ctl_elem_id id1, id2;
 int error;

 memset(&id1, 0, sizeof(id1));
 memset(&id2, 0, sizeof(id2));
 id1.iface = id2.iface = SNDRV_CTL_ELEM_IFACE_MIXER;


 strcpy(id1.name, "Aux Playback Volume");
 strcpy(id2.name, "Synth Playback Volume");
 error = snd_ctl_rename_id(card, &id1, &id2);
 if (error < 0)
  return error;


 strcpy(id1.name, "Master Playback Switch");
 strcpy(id2.name, "Synth Playback Switch");
 error = snd_ctl_rename_id(card, &id1, &id2);
 if (error < 0)
  return error;

 return 0;
}
