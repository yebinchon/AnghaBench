
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int channel; } ;
struct TYPE_6__ {int data_block_quadlets; } ;
struct snd_ff {int unit; TYPE_2__ rx_resources; TYPE_3__ rx_stream; } ;
typedef int reg ;
typedef int __le32 ;
struct TYPE_4__ {int max_speed; } ;


 int FF800_RX_PACKET_FORMAT ;
 int FF800_STF ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int allocate_tx_resources (struct snd_ff*) ;
 int amdtp_stream_get_max_payload (TYPE_3__*) ;
 int cpu_to_le32 (int) ;
 int fw_iso_resources_allocate (TYPE_2__*,int ,int ) ;
 TYPE_1__* fw_parent_device (int ) ;
 int msleep (int) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int ff800_allocate_resources(struct snd_ff *ff, unsigned int rate)
{
 u32 data;
 __le32 reg;
 int err;

 reg = cpu_to_le32(rate);
 err = snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     FF800_STF, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;




 msleep(100);


 err = fw_iso_resources_allocate(&ff->rx_resources,
    amdtp_stream_get_max_payload(&ff->rx_stream),
    fw_parent_device(ff->unit)->max_speed);
 if (err < 0)
  return err;




 data = ff->rx_stream.data_block_quadlets << 3;
 data = (data << 8) | ff->rx_resources.channel;
 reg = cpu_to_le32(data);
 err = snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     FF800_RX_PACKET_FORMAT, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 return allocate_tx_resources(ff);
}
