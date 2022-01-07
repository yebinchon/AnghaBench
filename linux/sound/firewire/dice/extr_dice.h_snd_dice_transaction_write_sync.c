
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dummy; } ;


 int SND_DICE_ADDR_TYPE_SYNC ;
 int snd_dice_transaction_write (struct snd_dice*,int ,unsigned int,void*,unsigned int) ;

__attribute__((used)) static inline int snd_dice_transaction_write_sync(struct snd_dice *dice,
        unsigned int offset,
        void *buf, unsigned int len)
{
 return snd_dice_transaction_write(dice, SND_DICE_ADDR_TYPE_SYNC, offset,
       buf, len);
}
