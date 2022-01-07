
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dummy; } ;
typedef int __be32 ;


 int GLOBAL_CLOCK_SELECT ;
 unsigned int snd_dice_transaction_read_global (struct snd_dice*,int ,int *,int) ;

__attribute__((used)) static unsigned int get_clock_info(struct snd_dice *dice, __be32 *info)
{
 return snd_dice_transaction_read_global(dice, GLOBAL_CLOCK_SELECT,
      info, 4);
}
