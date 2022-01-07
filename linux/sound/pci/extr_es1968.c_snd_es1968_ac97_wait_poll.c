
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1968 {TYPE_1__* card; scalar_t__ io_port; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ESM_AC97_INDEX ;
 int dev_dbg (int ,char*) ;
 int inb (scalar_t__) ;

__attribute__((used)) static int snd_es1968_ac97_wait_poll(struct es1968 *chip)
{
 int timeout = 100000;

 while (timeout-- > 0) {
  if (!(inb(chip->io_port + ESM_AC97_INDEX) & 1))
   return 0;
 }
 dev_dbg(chip->card->dev, "ac97 timeout\n");
 return 1;
}
