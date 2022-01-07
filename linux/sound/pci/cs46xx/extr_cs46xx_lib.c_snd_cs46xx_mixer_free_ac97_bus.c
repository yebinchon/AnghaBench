
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int * ac97_bus; } ;
struct snd_ac97_bus {struct snd_cs46xx* private_data; } ;



__attribute__((used)) static void snd_cs46xx_mixer_free_ac97_bus(struct snd_ac97_bus *bus)
{
 struct snd_cs46xx *chip = bus->private_data;

 chip->ac97_bus = ((void*)0);
}
