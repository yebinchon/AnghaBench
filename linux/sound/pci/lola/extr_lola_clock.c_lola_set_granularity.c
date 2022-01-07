
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_freq; } ;
struct lola {unsigned int granularity; TYPE_1__ clock; scalar_t__ audio_out_alloc_mask; scalar_t__ audio_in_alloc_mask; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned int LOLA_GRANULARITY_STEP ;
 int LOLA_VERB_SET_GRANULARITY_STEPS ;
 int check_gran_clock_compatibility (struct lola*,unsigned int,int ) ;
 int lola_codec_flush (struct lola*) ;
 int lola_codec_write (struct lola*,int,int ,unsigned int,int ) ;
 int usleep_range (int,int) ;

int lola_set_granularity(struct lola *chip, unsigned int val, bool force)
{
 int err;

 if (!force) {
  if (val == chip->granularity)
   return 0;





  if (!check_gran_clock_compatibility(chip, val,
          chip->clock.cur_freq))
   return -EINVAL;
 }

 chip->granularity = val;
 val /= LOLA_GRANULARITY_STEP;


 err = lola_codec_write(chip, 1, LOLA_VERB_SET_GRANULARITY_STEPS,
          val, 0);
 if (err < 0)
  return err;

 usleep_range(400 * val, 20000);
 return lola_codec_flush(chip);
}
