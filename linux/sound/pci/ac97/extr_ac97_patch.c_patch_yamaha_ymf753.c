
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int caps; int * build_ops; } ;


 int AC97_BC_BASS_TREBLE ;
 int patch_yamaha_ymf753_ops ;

__attribute__((used)) static int patch_yamaha_ymf753(struct snd_ac97 * ac97)
{







 ac97->build_ops = &patch_yamaha_ymf753_ops;
 ac97->caps |= AC97_BC_BASS_TREBLE;
 ac97->caps |= 0x04 << 10;
 return 0;
}
