
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_tscm {int unit; } ;
typedef int reg ;
typedef enum snd_tscm_clock { ____Placeholder_snd_tscm_clock } snd_tscm_clock ;
typedef int __be32 ;


 int CLOCK_CONFIG_MASK ;
 int EAGAIN ;
 int INT_MAX ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 scalar_t__ TSCM_ADDR_BASE ;
 scalar_t__ TSCM_OFFSET_CLOCK_STATUS ;
 scalar_t__ TSCM_OFFSET_MULTIPLEX_MODE ;
 int cpu_to_be32 (int) ;
 int get_clock (struct snd_tscm*,int*) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int set_clock(struct snd_tscm *tscm, unsigned int rate,
       enum snd_tscm_clock clock)
{
 u32 data;
 __be32 reg;
 int err;

 err = get_clock(tscm, &data);
 if (err < 0)
  return err;
 data &= CLOCK_CONFIG_MASK;

 if (rate > 0) {
  data &= 0x000000ff;

  if ((rate % 44100) == 0) {
   data |= 0x00000100;

   if (rate / 44100 == 2)
    data |= 0x00008000;
  } else if ((rate % 48000) == 0) {
   data |= 0x00000200;

   if (rate / 48000 == 2)
    data |= 0x00008000;
  } else {
   return -EAGAIN;
  }
 }

 if (clock != INT_MAX) {
  data &= 0x0000ff00;
  data |= clock + 1;
 }

 reg = cpu_to_be32(data);

 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_CLOCK_STATUS,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 if (data & 0x00008000)
  reg = cpu_to_be32(0x0000001a);
 else
  reg = cpu_to_be32(0x0000000d);

 return snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
      TSCM_ADDR_BASE + TSCM_OFFSET_MULTIPLEX_MODE,
      &reg, sizeof(reg), 0);
}
