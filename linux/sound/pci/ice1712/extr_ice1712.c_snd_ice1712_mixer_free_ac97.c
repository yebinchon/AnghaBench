
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int * ac97; } ;
struct snd_ac97 {struct snd_ice1712* private_data; } ;



__attribute__((used)) static void snd_ice1712_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct snd_ice1712 *ice = ac97->private_data;
 ice->ac97 = ((void*)0);
}
