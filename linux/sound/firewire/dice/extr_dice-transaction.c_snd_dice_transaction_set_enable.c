
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int global_enabled; int owner_generation; int unit; } ;
typedef int __be32 ;


 int FW_FIXED_GENERATION ;
 int GLOBAL_ENABLE ;
 int SND_DICE_ADDR_TYPE_GLOBAL ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_be32 (int) ;
 int get_subaddr (struct snd_dice*,int ,int ) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int) ;

int snd_dice_transaction_set_enable(struct snd_dice *dice)
{
 __be32 value;
 int err = 0;

 if (dice->global_enabled)
  goto end;

 value = cpu_to_be32(1);
 err = snd_fw_transaction(dice->unit, TCODE_WRITE_QUADLET_REQUEST,
     get_subaddr(dice, SND_DICE_ADDR_TYPE_GLOBAL,
          GLOBAL_ENABLE),
     &value, 4,
     FW_FIXED_GENERATION | dice->owner_generation);
 if (err < 0)
  goto end;

 dice->global_enabled = 1;
end:
 return err;
}
