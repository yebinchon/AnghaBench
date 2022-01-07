
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int unit; } ;
typedef enum snd_dice_addr_type { ____Placeholder_snd_dice_addr_type } snd_dice_addr_type ;


 int TCODE_READ_BLOCK_REQUEST ;
 int TCODE_READ_QUADLET_REQUEST ;
 int get_subaddr (struct snd_dice*,int,unsigned int) ;
 int snd_fw_transaction (int ,int ,int ,void*,unsigned int,int ) ;

int snd_dice_transaction_read(struct snd_dice *dice,
         enum snd_dice_addr_type type, unsigned int offset,
         void *buf, unsigned int len)
{
 return snd_fw_transaction(dice->unit,
      (len == 4) ? TCODE_READ_QUADLET_REQUEST :
            TCODE_READ_BLOCK_REQUEST,
      get_subaddr(dice, type, offset), buf, len, 0);
}
