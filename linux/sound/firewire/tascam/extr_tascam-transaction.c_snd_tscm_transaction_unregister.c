
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * callback_data; } ;
struct snd_tscm {TYPE_1__ async_handler; int unit; } ;
typedef int reg ;
typedef int __be32 ;


 int TCODE_WRITE_QUADLET_REQUEST ;
 scalar_t__ TSCM_ADDR_BASE ;
 scalar_t__ TSCM_OFFSET_LED_POWER ;
 scalar_t__ TSCM_OFFSET_MIDI_TX_ADDR_HI ;
 scalar_t__ TSCM_OFFSET_MIDI_TX_ADDR_LO ;
 scalar_t__ TSCM_OFFSET_MIDI_TX_ON ;
 int cpu_to_be32 (int) ;
 int fw_core_remove_address_handler (TYPE_1__*) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

void snd_tscm_transaction_unregister(struct snd_tscm *tscm)
{
 __be32 reg;

 if (tscm->async_handler.callback_data == ((void*)0))
  return;


 reg = cpu_to_be32(0x0000008e);
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_LED_POWER,
      &reg, sizeof(reg), 0);


 reg = cpu_to_be32(0x00000000);
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_MIDI_TX_ON,
      &reg, sizeof(reg), 0);


 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_MIDI_TX_ADDR_HI,
      &reg, sizeof(reg), 0);
 snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_MIDI_TX_ADDR_LO,
      &reg, sizeof(reg), 0);

 fw_core_remove_address_handler(&tscm->async_handler);
 tscm->async_handler.callback_data = ((void*)0);
}
