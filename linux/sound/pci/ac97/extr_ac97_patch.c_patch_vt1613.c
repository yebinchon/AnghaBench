
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int caps; int flags; int * build_ops; } ;


 int AC97_BC_HEADPHONE ;
 int AC97_HAS_NO_VIDEO ;
 int patch_vt1613_ops ;

__attribute__((used)) static int patch_vt1613(struct snd_ac97 *ac97)
{
 ac97->build_ops = &patch_vt1613_ops;

 ac97->flags |= AC97_HAS_NO_VIDEO;
 ac97->caps |= AC97_BC_HEADPHONE;

 return 0;
}
