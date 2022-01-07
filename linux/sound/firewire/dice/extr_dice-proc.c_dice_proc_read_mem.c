
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_dice {int unit; } ;


 scalar_t__ DICE_PRIVATE_SPACE ;
 int TCODE_READ_BLOCK_REQUEST ;
 int be32_to_cpus (int *) ;
 int snd_fw_transaction (int ,int ,scalar_t__,void*,int,int ) ;

__attribute__((used)) static int dice_proc_read_mem(struct snd_dice *dice, void *buffer,
         unsigned int offset_q, unsigned int quadlets)
{
 unsigned int i;
 int err;

 err = snd_fw_transaction(dice->unit, TCODE_READ_BLOCK_REQUEST,
     DICE_PRIVATE_SPACE + 4 * offset_q,
     buffer, 4 * quadlets, 0);
 if (err < 0)
  return err;

 for (i = 0; i < quadlets; ++i)
  be32_to_cpus(&((u32 *)buffer)[i]);

 return 0;
}
