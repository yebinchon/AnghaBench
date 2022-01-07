
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t cur_index; int cur_valid; int cur_freq; TYPE_1__* sample_clock; } ;
struct lola {TYPE_2__ clock; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ LOLA_CLOCK_TYPE_INTERNAL ;
 unsigned int LOLA_UNSOLICITED_TAG ;
 unsigned int LOLA_UNSOLICITED_TAG_MASK ;
 unsigned int LOLA_UNSOL_RESP_TAG_OFFSET ;
 int lola_sample_rate_convert (unsigned int) ;

bool lola_update_ext_clock_freq(struct lola *chip, unsigned int val)
{
 unsigned int tag;




 if (!val)
  return 0;
 tag = (val >> LOLA_UNSOL_RESP_TAG_OFFSET) & LOLA_UNSOLICITED_TAG_MASK;
 if (tag != LOLA_UNSOLICITED_TAG)
  return 0;


 if (chip->clock.sample_clock[chip->clock.cur_index].type !=
     LOLA_CLOCK_TYPE_INTERNAL) {
  chip->clock.cur_freq = lola_sample_rate_convert(val & 0x7f);
  chip->clock.cur_valid = (val & 0x100) != 0;
 }
 return 1;
}
