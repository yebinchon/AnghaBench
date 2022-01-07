
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lola {int card; TYPE_1__* pin; } ;
struct TYPE_5__ {char* name; int private_value; } ;
struct TYPE_4__ {scalar_t__ num_pins; scalar_t__ num_analog_pins; } ;


 TYPE_2__ lola_analog_mixer ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (TYPE_2__*,struct lola*) ;

__attribute__((used)) static int create_analog_mixer(struct lola *chip, int dir, char *name)
{
 if (!chip->pin[dir].num_pins)
  return 0;

 if (chip->pin[dir].num_pins != chip->pin[dir].num_analog_pins)
  return 0;
 lola_analog_mixer.name = name;
 lola_analog_mixer.private_value = dir;
 return snd_ctl_add(chip->card,
      snd_ctl_new1(&lola_analog_mixer, chip));
}
