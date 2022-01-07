
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;
struct snd_ac97_template {struct atmel_ac97c* private_data; } ;
struct atmel_ac97c {int ac97; int ac97_bus; } ;


 int memset (struct snd_ac97_template*,int ,int) ;
 int snd_ac97_mixer (int ,struct snd_ac97_template*,int *) ;

__attribute__((used)) static int atmel_ac97c_mixer_new(struct atmel_ac97c *chip)
{
 struct snd_ac97_template template;
 memset(&template, 0, sizeof(template));
 template.private_data = chip;
 return snd_ac97_mixer(chip->ac97_bus, &template, &chip->ac97);
}
