
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_tscm {int unit; TYPE_1__* spec; } ;
typedef int reg ;
typedef int __be32 ;
struct TYPE_2__ {unsigned int pcm_capture_analog_channels; unsigned int pcm_playback_analog_channels; scalar_t__ has_spdif; scalar_t__ has_adat; } ;


 int BIT (unsigned int) ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 scalar_t__ TSCM_ADDR_BASE ;
 scalar_t__ TSCM_OFFSET_RX_PCM_CHANNELS ;
 scalar_t__ TSCM_OFFSET_TX_PCM_CHANNELS ;
 int cpu_to_be32 (int) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int enable_data_channels(struct snd_tscm *tscm)
{
 __be32 reg;
 u32 data;
 unsigned int i;
 int err;

 data = 0;
 for (i = 0; i < tscm->spec->pcm_capture_analog_channels; ++i)
  data |= BIT(i);
 if (tscm->spec->has_adat)
  data |= 0x0000ff00;
 if (tscm->spec->has_spdif)
  data |= 0x00030000;

 reg = cpu_to_be32(data);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_TX_PCM_CHANNELS,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 data = 0;
 for (i = 0; i < tscm->spec->pcm_playback_analog_channels; ++i)
  data |= BIT(i);
 if (tscm->spec->has_adat)
  data |= 0x0000ff00;
 if (tscm->spec->has_spdif)
  data |= 0x00030000;

 reg = cpu_to_be32(data);
 return snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_RX_PCM_CHANNELS,
      &reg, sizeof(reg), 0);
}
