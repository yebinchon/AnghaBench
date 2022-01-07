
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_azf3328 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int ,char*) ;

__attribute__((used)) static inline void
snd_azf3328_gameport_interrupt(struct snd_azf3328 *chip)
{
 dev_warn(chip->card->dev, "huh, game port IRQ occurred!?\n");
}
