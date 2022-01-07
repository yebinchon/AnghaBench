
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned int channel; } ;
struct TYPE_4__ {int data_block_quadlets; } ;
struct snd_ff {TYPE_1__ tx_resources; int unit; TYPE_2__ tx_stream; } ;
typedef int reg ;
typedef int __le32 ;


 int ETIMEDOUT ;
 int FF800_ALLOC_TX_STREAM ;
 int FF800_TX_PACKET_ISOC_CH ;
 int TCODE_READ_QUADLET_REQUEST ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int msleep (int) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int allocate_tx_resources(struct snd_ff *ff)
{
 __le32 reg;
 unsigned int count;
 unsigned int tx_isoc_channel;
 int err;

 reg = cpu_to_le32(ff->tx_stream.data_block_quadlets);
 err = snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     FF800_ALLOC_TX_STREAM, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;


 count = 0;
 while (count++ < 10) {
  u32 data;
  err = snd_fw_transaction(ff->unit, TCODE_READ_QUADLET_REQUEST,
    FF800_TX_PACKET_ISOC_CH, &reg, sizeof(reg), 0);
  if (err < 0)
   return err;

  data = le32_to_cpu(reg);
  if (data != 0xffffffff) {
   tx_isoc_channel = data;
   break;
  }

  msleep(50);
 }
 if (count >= 10)
  return -ETIMEDOUT;




 ff->tx_resources.channel = tx_isoc_channel;

 return 0;
}
