
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int id; } ;
struct ac97_codec_id {int id; int mask; char const* name; } ;


 struct ac97_codec_id* snd_ac97_codec_ids ;

const char *snd_ac97_get_short_name(struct snd_ac97 *ac97)
{
 const struct ac97_codec_id *pid;

 for (pid = snd_ac97_codec_ids; pid->id; pid++)
  if (pid->id == (ac97->id & pid->mask))
   return pid->name;
 return "unknown codec";
}
