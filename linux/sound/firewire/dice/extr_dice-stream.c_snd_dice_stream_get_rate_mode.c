
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int clock_caps; } ;
typedef enum snd_dice_rate_mode { ____Placeholder_snd_dice_rate_mode } snd_dice_rate_mode ;


 int ARRAY_SIZE (unsigned int*) ;
 int BIT (int) ;
 int EINVAL ;



 unsigned int* snd_dice_rates ;

int snd_dice_stream_get_rate_mode(struct snd_dice *dice, unsigned int rate,
      enum snd_dice_rate_mode *mode)
{

 static const enum snd_dice_rate_mode modes[] = {
  [0] = 129,
  [1] = 129,
  [2] = 129,
  [3] = 128,
  [4] = 128,
  [5] = 130,
  [6] = 130,
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(snd_dice_rates); i++) {
  if (!(dice->clock_caps & BIT(i)))
   continue;
  if (snd_dice_rates[i] != rate)
   continue;

  *mode = modes[i];
  return 0;
 }

 return -EINVAL;
}
