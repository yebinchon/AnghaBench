
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_ac97 {int dummy; } ;


 int ENOENT ;
 struct snd_kcontrol* ctl_find (struct snd_ac97*,char const*,char const*) ;
 int set_ctl_name (int ,char const*,char const*) ;

__attribute__((used)) static int snd_ac97_rename_ctl(struct snd_ac97 *ac97, const char *src,
          const char *dst, const char *suffix)
{
 struct snd_kcontrol *kctl = ctl_find(ac97, src, suffix);
 if (kctl) {
  set_ctl_name(kctl->id.name, dst, suffix);
  return 0;
 }
 return -ENOENT;
}
