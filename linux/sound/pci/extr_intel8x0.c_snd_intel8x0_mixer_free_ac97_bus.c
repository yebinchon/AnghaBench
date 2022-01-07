
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97_bus {struct intel8x0* private_data; } ;
struct intel8x0 {int * ac97_bus; } ;



__attribute__((used)) static void snd_intel8x0_mixer_free_ac97_bus(struct snd_ac97_bus *bus)
{
 struct intel8x0 *chip = bus->private_data;
 chip->ac97_bus = ((void*)0);
}
