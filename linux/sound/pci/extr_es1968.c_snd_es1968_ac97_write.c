
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {struct es1968* private_data; } ;
struct es1968 {scalar_t__ io_port; } ;


 scalar_t__ ESM_AC97_DATA ;
 scalar_t__ ESM_AC97_INDEX ;
 int outb (unsigned short,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int snd_es1968_ac97_wait (struct es1968*) ;

__attribute__((used)) static void snd_es1968_ac97_write(struct snd_ac97 *ac97, unsigned short reg, unsigned short val)
{
 struct es1968 *chip = ac97->private_data;

 snd_es1968_ac97_wait(chip);


 outw(val, chip->io_port + ESM_AC97_DATA);

 outb(reg, chip->io_port + ESM_AC97_INDEX);

}
