
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct snd_tscm {int unit; TYPE_2__ rx_resources; TYPE_1__ tx_resources; } ;
typedef int reg ;
typedef int __be32 ;


 int TCODE_WRITE_QUADLET_REQUEST ;
 scalar_t__ TSCM_ADDR_BASE ;
 scalar_t__ TSCM_OFFSET_ISOC_RX_CH ;
 scalar_t__ TSCM_OFFSET_ISOC_RX_ON ;
 scalar_t__ TSCM_OFFSET_ISOC_TX_CH ;
 scalar_t__ TSCM_OFFSET_ISOC_TX_ON ;
 scalar_t__ TSCM_OFFSET_SET_OPTION ;
 scalar_t__ TSCM_OFFSET_START_STREAMING ;
 scalar_t__ TSCM_OFFSET_UNKNOWN ;
 int cpu_to_be32 (int) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int begin_session(struct snd_tscm *tscm)
{
 __be32 reg;
 int err;


 reg = cpu_to_be32(tscm->tx_resources.channel);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_ISOC_TX_CH,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;


 reg = cpu_to_be32(0x00000002);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_UNKNOWN,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;


 reg = cpu_to_be32(tscm->rx_resources.channel);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_ISOC_RX_CH,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 reg = cpu_to_be32(0x00000001);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_START_STREAMING,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 reg = cpu_to_be32(0x00000001);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_ISOC_RX_ON,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;


 reg = cpu_to_be32(0x00002000);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_SET_OPTION,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;


 reg = cpu_to_be32(0x00000001);
 return snd_fw_transaction(tscm->unit,
      TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_ISOC_TX_ON,
      &reg, sizeof(reg), 0);
}
