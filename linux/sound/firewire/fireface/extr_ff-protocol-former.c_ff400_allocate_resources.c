
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int channels_mask; } ;
struct snd_ff {TYPE_2__ tx_resources; int unit; int rx_stream; TYPE_2__ rx_resources; int tx_stream; } ;
typedef int reg ;
typedef enum snd_ff_stream_mode { ____Placeholder_snd_ff_stream_mode } snd_ff_stream_mode ;
typedef int __le32 ;
struct TYPE_4__ {int max_speed; } ;


 int CIP_SFC_COUNT ;
 int EINVAL ;
 int FF400_STF ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 unsigned int* amdtp_rate_table ;
 int amdtp_stream_get_max_payload (int *) ;
 int cpu_to_le32 (unsigned int) ;
 int fw_iso_resources_allocate (TYPE_2__*,int ,int ) ;
 int fw_iso_resources_free (TYPE_2__*) ;
 TYPE_1__* fw_parent_device (int ) ;
 int msleep (int) ;
 int snd_ff_stream_get_multiplier_mode (int,int*) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int ff400_allocate_resources(struct snd_ff *ff, unsigned int rate)
{
 __le32 reg;
 enum snd_ff_stream_mode mode;
 int i;
 int err;


 for (i = 0; i < CIP_SFC_COUNT; i++) {
  if (amdtp_rate_table[i] == rate)
   break;
 }
 if (i >= CIP_SFC_COUNT)
  return -EINVAL;


 reg = cpu_to_le32(rate);
 err = snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     FF400_STF, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 msleep(100);

 err = snd_ff_stream_get_multiplier_mode(i, &mode);
 if (err < 0)
  return err;


 ff->tx_resources.channels_mask = 0x00000000000000ffuLL;
 err = fw_iso_resources_allocate(&ff->tx_resources,
   amdtp_stream_get_max_payload(&ff->tx_stream),
   fw_parent_device(ff->unit)->max_speed);
 if (err < 0)
  return err;


 ff->rx_resources.channels_mask = 0x00000000000000ffuLL;
 err = fw_iso_resources_allocate(&ff->rx_resources,
   amdtp_stream_get_max_payload(&ff->rx_stream),
   fw_parent_device(ff->unit)->max_speed);
 if (err < 0)
  fw_iso_resources_free(&ff->tx_resources);

 return err;
}
