
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_m3 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int snd_m3_inb (struct snd_m3*,int) ;

__attribute__((used)) static int snd_m3_ac97_wait(struct snd_m3 *chip)
{
 int i = 10000;

 do {
  if (! (snd_m3_inb(chip, 0x30) & 1))
   return 0;
  cpu_relax();
 } while (i-- > 0);

 dev_err(chip->card->dev, "ac97 serial bus busy\n");
 return 1;
}
