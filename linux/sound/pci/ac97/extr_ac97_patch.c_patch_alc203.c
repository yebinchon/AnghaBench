
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int snd_ac97_update_bits (struct snd_ac97*,int,int,int) ;

__attribute__((used)) static int patch_alc203(struct snd_ac97 *ac97)
{
 snd_ac97_update_bits(ac97, 0x7a, 0x400, 0x400);
 return 0;
}
