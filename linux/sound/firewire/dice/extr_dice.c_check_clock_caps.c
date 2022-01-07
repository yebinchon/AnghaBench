
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int clock_caps; } ;
typedef int __be32 ;


 int CLOCK_CAP_RATE_44100 ;
 int CLOCK_CAP_RATE_48000 ;
 int CLOCK_CAP_SOURCE_ARX1 ;
 int CLOCK_CAP_SOURCE_INTERNAL ;
 int GLOBAL_CLOCK_CAPABILITIES ;
 int be32_to_cpu (int ) ;
 int snd_dice_transaction_read_global (struct snd_dice*,int ,int *,int) ;

__attribute__((used)) static int check_clock_caps(struct snd_dice *dice)
{
 __be32 value;
 int err;


 if (dice->clock_caps > 0) {
  err = snd_dice_transaction_read_global(dice,
      GLOBAL_CLOCK_CAPABILITIES,
      &value, 4);
  if (err < 0)
   return err;
  dice->clock_caps = be32_to_cpu(value);
 } else {

  dice->clock_caps = CLOCK_CAP_RATE_44100 |
       CLOCK_CAP_RATE_48000 |
       CLOCK_CAP_SOURCE_ARX1 |
       CLOCK_CAP_SOURCE_INTERNAL;
 }

 return 0;
}
