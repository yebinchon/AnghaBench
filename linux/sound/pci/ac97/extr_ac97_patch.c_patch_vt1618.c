
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;
 int snd_ac97_controls_vt1618 ;

__attribute__((used)) static int patch_vt1618(struct snd_ac97 *ac97)
{
 return patch_build_controls(ac97, snd_ac97_controls_vt1618,
        ARRAY_SIZE(snd_ac97_controls_vt1618));
}
