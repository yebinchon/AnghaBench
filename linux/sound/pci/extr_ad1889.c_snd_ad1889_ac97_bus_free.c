
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1889 {int * ac97_bus; } ;
struct snd_ac97_bus {struct snd_ad1889* private_data; } ;



__attribute__((used)) static void
snd_ad1889_ac97_bus_free(struct snd_ac97_bus *bus)
{
 struct snd_ad1889 *chip = bus->private_data;
 chip->ac97_bus = ((void*)0);
}
