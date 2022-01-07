
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int patch_si3036_ops ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int mpatch_si3036(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_si3036_ops;
 snd_ac97_write_cache(ac97, 0x5c, 0xf210 );
 snd_ac97_write_cache(ac97, 0x68, 0);
 return 0;
}
