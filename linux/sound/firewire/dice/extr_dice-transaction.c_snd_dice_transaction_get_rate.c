
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dummy; } ;
typedef int __be32 ;


 unsigned int CLOCK_RATE_MASK ;
 unsigned int CLOCK_RATE_SHIFT ;
 int ENOSYS ;
 unsigned int SND_DICE_RATES_COUNT ;
 unsigned int be32_to_cpu (int ) ;
 int get_clock_info (struct snd_dice*,int *) ;
 unsigned int* snd_dice_rates ;

int snd_dice_transaction_get_rate(struct snd_dice *dice, unsigned int *rate)
{
 __be32 info;
 unsigned int index;
 int err;

 err = get_clock_info(dice, &info);
 if (err < 0)
  goto end;

 index = (be32_to_cpu(info) & CLOCK_RATE_MASK) >> CLOCK_RATE_SHIFT;
 if (index >= SND_DICE_RATES_COUNT) {
  err = -ENOSYS;
  goto end;
 }

 *rate = snd_dice_rates[index];
end:
 return err;
}
