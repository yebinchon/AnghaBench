
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int data_block_quadlets; } ;
struct TYPE_10__ {unsigned int generation; int channel; } ;
struct TYPE_7__ {int data_block_quadlets; } ;
struct snd_ff {int unit; TYPE_3__ tx_stream; TYPE_5__ tx_resources; TYPE_5__ rx_resources; TYPE_2__ rx_stream; } ;
typedef int reg ;
typedef int __le32 ;
struct TYPE_9__ {TYPE_1__* card; } ;
struct TYPE_6__ {unsigned int generation; } ;


 int FF400_ISOC_COMM_START ;
 int FF400_RX_PACKET_FORMAT ;
 int FF400_TX_PACKET_FORMAT ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_le32 (int) ;
 int fw_iso_resources_update (TYPE_5__*) ;
 TYPE_4__* fw_parent_device (int ) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int ff400_begin_session(struct snd_ff *ff, unsigned int rate)
{
 unsigned int generation = ff->rx_resources.generation;
 __le32 reg;
 int err;

 if (generation != fw_parent_device(ff->unit)->card->generation) {
  err = fw_iso_resources_update(&ff->tx_resources);
  if (err < 0)
   return err;

  err = fw_iso_resources_update(&ff->rx_resources);
  if (err < 0)
   return err;
 }



 reg = cpu_to_le32(((ff->rx_stream.data_block_quadlets << 3) << 8) |
     ff->rx_resources.channel);
 err = snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     FF400_RX_PACKET_FORMAT, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;




 reg = cpu_to_le32((0x80 << 24) |
     (ff->tx_resources.channel << 5) |
     (ff->tx_stream.data_block_quadlets));
 err = snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     FF400_TX_PACKET_FORMAT, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;


 reg = cpu_to_le32(0x00000001);
 return snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     FF400_ISOC_COMM_START, &reg, sizeof(reg), 0);
}
