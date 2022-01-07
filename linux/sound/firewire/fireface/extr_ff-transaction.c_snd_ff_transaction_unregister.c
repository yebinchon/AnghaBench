
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * callback_data; } ;
struct snd_ff {TYPE_2__ async_handler; TYPE_1__* spec; int unit; } ;
typedef int reg ;
typedef int __le32 ;
struct TYPE_3__ {int midi_high_addr; } ;


 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_le32 (int) ;
 int fw_core_remove_address_handler (TYPE_2__*) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

void snd_ff_transaction_unregister(struct snd_ff *ff)
{
 __le32 reg;

 if (ff->async_handler.callback_data == ((void*)0))
  return;
 ff->async_handler.callback_data = ((void*)0);


 reg = cpu_to_le32(0x00000000);
 snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
      ff->spec->midi_high_addr,
      &reg, sizeof(reg), 0);

 fw_core_remove_address_handler(&ff->async_handler);
}
