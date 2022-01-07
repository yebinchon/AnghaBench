
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int patch_ad1888 (struct snd_ac97*) ;
 int patch_ad1980_build_ops ;

__attribute__((used)) static int patch_ad1980(struct snd_ac97 * ac97)
{
 patch_ad1888(ac97);
 ac97->build_ops = &patch_ad1980_build_ops;
 return 0;
}
