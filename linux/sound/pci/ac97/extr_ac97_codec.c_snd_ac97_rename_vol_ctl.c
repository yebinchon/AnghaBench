
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int snd_ac97_rename_ctl (struct snd_ac97*,char const*,char const*,char*) ;

__attribute__((used)) static void snd_ac97_rename_vol_ctl(struct snd_ac97 *ac97, const char *src,
        const char *dst)
{
 snd_ac97_rename_ctl(ac97, src, dst, "Switch");
 snd_ac97_rename_ctl(ac97, src, dst, "Volume");
}
