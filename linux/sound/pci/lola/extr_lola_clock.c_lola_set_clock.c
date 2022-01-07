
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cur_index; int cur_freq; int cur_valid; TYPE_1__* sample_clock; } ;
struct lola {TYPE_2__ clock; int granularity; } ;
struct TYPE_3__ {scalar_t__ type; int freq; } ;


 int EINVAL ;
 scalar_t__ LOLA_CLOCK_TYPE_INTERNAL ;
 int check_gran_clock_compatibility (struct lola*,int ,int) ;
 int lola_set_clock_index (struct lola*,int) ;

int lola_set_clock(struct lola *chip, int idx)
{
 int freq = 0;
 bool valid = 0;

 if (idx == chip->clock.cur_index) {

  freq = chip->clock.cur_freq;
  valid = chip->clock.cur_valid;
 } else if (chip->clock.sample_clock[idx].type ==
     LOLA_CLOCK_TYPE_INTERNAL) {

  freq = chip->clock.sample_clock[idx].freq;
  valid = 1;
 }

 if (!freq || !valid)
  return -EINVAL;

 if (!check_gran_clock_compatibility(chip, chip->granularity, freq))
  return -EINVAL;

 if (idx != chip->clock.cur_index) {
  int err = lola_set_clock_index(chip, idx);
  if (err < 0)
   return err;

  chip->clock.cur_index = idx;
  chip->clock.cur_freq = freq;
  chip->clock.cur_valid = 1;
 }
 return 0;
}
