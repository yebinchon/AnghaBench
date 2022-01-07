
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int * ac97; } ;
struct snd_ac97 {struct snd_emu10k1* private_data; } ;



__attribute__((used)) static void snd_emu10k1_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct snd_emu10k1 *emu = ac97->private_data;
 emu->ac97 = ((void*)0);
}
