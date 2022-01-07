
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_index; } ;
struct lola {int input_src_mask; TYPE_1__ clock; int granularity; } ;


 int CAPT ;
 int PLAY ;
 int lola_enable_clock_events (struct lola*) ;
 int lola_set_clock_index (struct lola*,int ) ;
 int lola_set_granularity (struct lola*,int ,int) ;
 int lola_set_src_config (struct lola*,int ,int) ;
 int lola_setup_all_analog_gains (struct lola*,int ,int) ;

__attribute__((used)) static void lola_reset_setups(struct lola *chip)
{

 lola_set_granularity(chip, chip->granularity, 1);

 lola_set_clock_index(chip, chip->clock.cur_index);

 lola_enable_clock_events(chip);

 lola_setup_all_analog_gains(chip, CAPT, 0);

 lola_set_src_config(chip, chip->input_src_mask, 0);

 lola_setup_all_analog_gains(chip, PLAY, 0);
}
