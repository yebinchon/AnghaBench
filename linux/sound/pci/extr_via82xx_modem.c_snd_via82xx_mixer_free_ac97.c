
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx_modem {int * ac97; } ;
struct snd_ac97 {struct via82xx_modem* private_data; } ;



__attribute__((used)) static void snd_via82xx_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct via82xx_modem *chip = ac97->private_data;
 chip->ac97 = ((void*)0);
}
