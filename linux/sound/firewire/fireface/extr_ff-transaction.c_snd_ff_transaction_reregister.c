
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int offset; } ;
struct snd_ff {TYPE_2__* spec; int unit; TYPE_1__ async_handler; } ;
struct fw_card {int node_id; } ;
typedef int reg ;
typedef int __le32 ;
struct TYPE_6__ {struct fw_card* card; } ;
struct TYPE_5__ {int midi_high_addr; } ;


 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_le32 (int) ;
 TYPE_3__* fw_parent_device (int ) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

int snd_ff_transaction_reregister(struct snd_ff *ff)
{
 struct fw_card *fw_card = fw_parent_device(ff->unit)->card;
 u32 addr;
 __le32 reg;





 addr = (fw_card->node_id << 16) | (ff->async_handler.offset >> 32);
 reg = cpu_to_le32(addr);
 return snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
      ff->spec->midi_high_addr,
      &reg, sizeof(reg), 0);
}
