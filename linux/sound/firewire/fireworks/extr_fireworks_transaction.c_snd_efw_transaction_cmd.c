
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int dummy; } ;


 int MEMORY_SPACE_EFW_COMMAND ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int snd_fw_transaction (struct fw_unit*,int ,int ,void*,unsigned int,int ) ;

int snd_efw_transaction_cmd(struct fw_unit *unit,
       const void *cmd, unsigned int size)
{
 return snd_fw_transaction(unit, TCODE_WRITE_BLOCK_REQUEST,
      MEMORY_SPACE_EFW_COMMAND,
      (void *)cmd, size, 0);
}
