
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int patch_sigmatel_stac9700_ops ;

__attribute__((used)) static int patch_sigmatel_stac9700(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_sigmatel_stac9700_ops;
 return 0;
}
