
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {scalar_t__ num; struct fm801* private_data; } ;
struct fm801 {int * ac97_sec; int * ac97; } ;



__attribute__((used)) static void snd_fm801_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct fm801 *chip = ac97->private_data;
 if (ac97->num == 0) {
  chip->ac97 = ((void*)0);
 } else {
  chip->ac97_sec = ((void*)0);
 }
}
