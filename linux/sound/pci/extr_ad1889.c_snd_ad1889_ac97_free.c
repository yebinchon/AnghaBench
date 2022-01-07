
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1889 {int * ac97; } ;
struct snd_ac97 {struct snd_ad1889* private_data; } ;



__attribute__((used)) static void
snd_ad1889_ac97_free(struct snd_ac97 *ac97)
{
 struct snd_ad1889 *chip = ac97->private_data;
 chip->ac97 = ((void*)0);
}
