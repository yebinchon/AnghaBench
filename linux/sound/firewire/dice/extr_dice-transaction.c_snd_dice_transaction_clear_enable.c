
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int owner_generation; int global_enabled; int unit; } ;
typedef scalar_t__ __be32 ;


 int FW_FIXED_GENERATION ;
 int FW_QUIET ;
 int GLOBAL_ENABLE ;
 int SND_DICE_ADDR_TYPE_GLOBAL ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int get_subaddr (struct snd_dice*,int ,int ) ;
 int snd_fw_transaction (int ,int ,int ,scalar_t__*,int,int) ;

void snd_dice_transaction_clear_enable(struct snd_dice *dice)
{
 __be32 value;

 value = 0;
 snd_fw_transaction(dice->unit, TCODE_WRITE_QUADLET_REQUEST,
      get_subaddr(dice, SND_DICE_ADDR_TYPE_GLOBAL,
           GLOBAL_ENABLE),
      &value, 4, FW_QUIET |
      FW_FIXED_GENERATION | dice->owner_generation);

 dice->global_enabled = 0;
}
