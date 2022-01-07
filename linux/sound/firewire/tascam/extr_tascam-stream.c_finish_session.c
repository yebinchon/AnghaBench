
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int unit; } ;
typedef int reg ;
typedef scalar_t__ __be32 ;


 int TCODE_WRITE_QUADLET_REQUEST ;
 scalar_t__ TSCM_ADDR_BASE ;
 scalar_t__ TSCM_OFFSET_ISOC_RX_CH ;
 scalar_t__ TSCM_OFFSET_ISOC_RX_ON ;
 scalar_t__ TSCM_OFFSET_ISOC_TX_CH ;
 scalar_t__ TSCM_OFFSET_START_STREAMING ;
 scalar_t__ TSCM_OFFSET_UNKNOWN ;
 scalar_t__ cpu_to_be32 (int) ;
 int snd_fw_transaction (int ,int ,scalar_t__,scalar_t__*,int,int ) ;

__attribute__((used)) static void finish_session(struct snd_tscm *tscm)
{
 __be32 reg;

 reg = 0;
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_START_STREAMING,
      &reg, sizeof(reg), 0);

 reg = 0;
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_ISOC_RX_ON,
      &reg, sizeof(reg), 0);


 reg = cpu_to_be32(0x00000000);
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_ISOC_TX_CH,
      &reg, sizeof(reg), 0);
 reg = cpu_to_be32(0x00000000);
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_UNKNOWN,
      &reg, sizeof(reg), 0);
 reg = cpu_to_be32(0x00000000);
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_ISOC_RX_CH,
      &reg, sizeof(reg), 0);
}
