
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {size_t num; struct intel8x0* private_data; } ;
struct intel8x0 {int ** ac97; } ;



__attribute__((used)) static void snd_intel8x0_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct intel8x0 *chip = ac97->private_data;
 chip->ac97[ac97->num] = ((void*)0);
}
