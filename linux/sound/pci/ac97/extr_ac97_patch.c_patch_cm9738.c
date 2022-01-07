
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int flags; int * build_ops; } ;


 int AC97_HAS_NO_PCM_VOL ;
 int AC97_PCM ;
 int patch_cm9738_ops ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_cm9738(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_cm9738_ops;


 ac97->flags |= AC97_HAS_NO_PCM_VOL;
 snd_ac97_write_cache(ac97, AC97_PCM, 0x8000);

 return 0;
}
