
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lola {TYPE_1__* pin; } ;
struct TYPE_4__ {scalar_t__ is_analog; } ;
struct TYPE_3__ {int num_pins; int num_analog_pins; TYPE_2__* pins; } ;


 int lola_init_pin (struct lola*,TYPE_2__*,int,int) ;

int lola_init_pins(struct lola *chip, int dir, int *nidp)
{
 int i, err, nid;
 nid = *nidp;
 for (i = 0; i < chip->pin[dir].num_pins; i++, nid++) {
  err = lola_init_pin(chip, &chip->pin[dir].pins[i], dir, nid);
  if (err < 0)
   return err;
  if (chip->pin[dir].pins[i].is_analog)
   chip->pin[dir].num_analog_pins++;
 }
 *nidp = nid;
 return 0;
}
