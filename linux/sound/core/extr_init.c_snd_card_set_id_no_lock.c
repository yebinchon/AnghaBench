
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {char* id; TYPE_1__* proc_root; int dev; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int SNDRV_CARDS ;
 scalar_t__ card_id_ok (struct snd_card*,char*) ;
 int copy_valid_id_string (struct snd_card*,char const*,char const*) ;
 int dev_err (int ,char*,char*) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,scalar_t__,int) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void snd_card_set_id_no_lock(struct snd_card *card, const char *src,
        const char *nid)
{
 int len, loops;
 bool is_default = 0;
 char *id;

 copy_valid_id_string(card, src, nid);
 id = card->id;

 again:



 if (!*id || !strncmp(id, "card", 4)) {
  strcpy(id, "Default");
  is_default = 1;
 }

 len = strlen(id);
 for (loops = 0; loops < SNDRV_CARDS; loops++) {
  char *spos;
  char sfxstr[5];
  int sfxlen;

  if (card_id_ok(card, id))
   return;


  sprintf(sfxstr, "_%X", loops + 1);
  sfxlen = strlen(sfxstr);
  if (len + sfxlen >= sizeof(card->id))
   spos = id + sizeof(card->id) - sfxlen - 1;
  else
   spos = id + len;
  strcpy(spos, sfxstr);
 }

 if (!is_default) {
  *id = 0;
  goto again;
 }

 dev_err(card->dev, "unable to set card id (%s)\n", id);
 if (card->proc_root->name)
  strlcpy(card->id, card->proc_root->name, sizeof(card->id));
}
