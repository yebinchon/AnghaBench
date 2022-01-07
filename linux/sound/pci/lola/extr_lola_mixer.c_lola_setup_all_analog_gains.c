
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola_pin {unsigned int cur_gain_step; scalar_t__ is_analog; } ;
struct lola {TYPE_1__* pin; } ;
struct TYPE_2__ {int num_pins; struct lola_pin* pins; } ;


 int lola_codec_flush (struct lola*) ;
 int set_analog_volume (struct lola*,int,int,unsigned int,int) ;

int lola_setup_all_analog_gains(struct lola *chip, int dir, bool mute)
{
 struct lola_pin *pin;
 int idx, max_idx;

 pin = chip->pin[dir].pins;
 max_idx = chip->pin[dir].num_pins;
 for (idx = 0; idx < max_idx; idx++) {
  if (pin[idx].is_analog) {
   unsigned int val = mute ? 0 : pin[idx].cur_gain_step;

   set_analog_volume(chip, dir, idx, val, 0);
  }
 }
 return lola_codec_flush(chip);
}
