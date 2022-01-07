
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 int OXYGEN_GPIO_CONTROL ;
 int oxygen_set_bits16 (struct oxygen*,int ,int) ;
 int snd_component_add (int ,char*) ;

__attribute__((used)) static void se6x_init(struct oxygen *chip)
{
 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL, 0x005);

 snd_component_add(chip->card, "PCM1792A");
 snd_component_add(chip->card, "PCM1804");
}
