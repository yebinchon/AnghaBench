
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dummy; } ;
typedef int __be32 ;


 unsigned int CLOCK_SOURCE_MASK ;
 unsigned int be32_to_cpu (int ) ;
 int get_clock_info (struct snd_dice*,int *) ;

int snd_dice_transaction_get_clock_source(struct snd_dice *dice,
       unsigned int *source)
{
 __be32 info;
 int err;

 err = get_clock_info(dice, &info);
 if (err >= 0)
  *source = be32_to_cpu(info) & CLOCK_SOURCE_MASK;

 return err;
}
