
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct ac97_codec_id {char* name; int flags; int mask; int (* patch ) (struct snd_ac97*) ;} ;


 int AC97_MODEM_PATCH ;
 struct ac97_codec_id* look_for_codec_id (int ,unsigned int) ;
 int printable (unsigned int) ;
 int snd_ac97_codec_id_vendors ;
 int snd_ac97_codec_ids ;
 int sprintf (char*,char*,unsigned int,...) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 (struct snd_ac97*) ;
 int stub2 (struct snd_ac97*) ;

void snd_ac97_get_name(struct snd_ac97 *ac97, unsigned int id, char *name, int modem)
{
 const struct ac97_codec_id *pid;

 sprintf(name, "0x%x %c%c%c", id,
  printable(id >> 24),
  printable(id >> 16),
  printable(id >> 8));
 pid = look_for_codec_id(snd_ac97_codec_id_vendors, id);
 if (! pid)
  return;

 strcpy(name, pid->name);
 if (ac97 && pid->patch) {
  if ((modem && (pid->flags & AC97_MODEM_PATCH)) ||
      (! modem && ! (pid->flags & AC97_MODEM_PATCH)))
   pid->patch(ac97);
 }

 pid = look_for_codec_id(snd_ac97_codec_ids, id);
 if (pid) {
  strcat(name, " ");
  strcat(name, pid->name);
  if (pid->mask != 0xffffffff)
   sprintf(name + strlen(name), " rev %d", id & ~pid->mask);
  if (ac97 && pid->patch) {
   if ((modem && (pid->flags & AC97_MODEM_PATCH)) ||
       (! modem && ! (pid->flags & AC97_MODEM_PATCH)))
    pid->patch(ac97);
  }
 } else
  sprintf(name + strlen(name), " id %x", id & 0xff);
}
