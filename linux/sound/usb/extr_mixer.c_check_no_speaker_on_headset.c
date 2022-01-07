
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_card {int shortname; } ;


 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strstr (int ,char const*) ;

__attribute__((used)) static void check_no_speaker_on_headset(struct snd_kcontrol *kctl,
     struct snd_card *card)
{
 const char *names_to_check[] = {
  "Headset", "headset", "Headphone", "headphone", ((void*)0)};
 const char **s;
 bool found = 0;

 if (strcmp("Speaker", kctl->id.name))
  return;

 for (s = names_to_check; *s; s++)
  if (strstr(card->shortname, *s)) {
   found = 1;
   break;
  }

 if (!found)
  return;

 strlcpy(kctl->id.name, "Headphone", sizeof(kctl->id.name));
}
