
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
typedef enum snd_ff_clock_src { ____Placeholder_snd_ff_clock_src } snd_ff_clock_src ;
typedef int __le32 ;
struct TYPE_4__ {int max_speed; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int LATTER_STF ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 unsigned int* amdtp_rate_table ;
 int amdtp_stream_get_max_payload (int *) ;
 int cpu_to_le32 (unsigned int) ;
 int fw_iso_resources_allocate (TYPE_2__*,int ,int ) ;
 int fw_iso_resources_free (TYPE_2__*) ;
 TYPE_1__* fw_parent_device (int ) ;
 int latter_get_clock (struct snd_ff*,unsigned int*,int*) ;
 int snd_ff_stream_get_multiplier_mode (int,int*) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int latter_allocate_resources(struct snd_ff *ff, unsigned int rate)
{
 enum snd_ff_stream_mode mode;
 unsigned int code;
 __le32 reg;
 unsigned int count;
 int i;
 int err;


 if (rate % 32000 == 0)
  code = 0x00;
 else if (rate % 44100 == 0)
  code = 0x02;
 else if (rate % 48000 == 0)
  code = 0x04;
 else
  return -EINVAL;

 if (rate >= 64000 && rate < 128000)
  code |= 0x08;
 else if (rate >= 128000 && rate < 192000)
  code |= 0x10;

 reg = cpu_to_le32(code);
 err = snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
     LATTER_STF, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;


 count = 0;
 while (count++ < 10) {
  unsigned int curr_rate;
  enum snd_ff_clock_src src;

  err = latter_get_clock(ff, &curr_rate, &src);
  if (err < 0)
   return err;

  if (curr_rate == rate)
   break;
 }
 if (count == 10)
  return -ETIMEDOUT;

 for (i = 0; i < ARRAY_SIZE(amdtp_rate_table); ++i) {
  if (rate == amdtp_rate_table[i])
   break;
 }
 if (i == ARRAY_SIZE(amdtp_rate_table))
  return -EINVAL;

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
