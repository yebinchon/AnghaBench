
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_tscm {int unit; } ;
typedef int reg ;
typedef int __be32 ;


 int CLOCK_STATUS_MASK ;
 int EAGAIN ;
 int TCODE_READ_QUADLET_REQUEST ;
 scalar_t__ TSCM_ADDR_BASE ;
 scalar_t__ TSCM_OFFSET_CLOCK_STATUS ;
 int be32_to_cpu (int ) ;
 int msleep (int) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int get_clock(struct snd_tscm *tscm, u32 *data)
{
 int trial = 0;
 __be32 reg;
 int err;

 while (trial++ < 5) {
  err = snd_fw_transaction(tscm->unit, TCODE_READ_QUADLET_REQUEST,
    TSCM_ADDR_BASE + TSCM_OFFSET_CLOCK_STATUS,
    &reg, sizeof(reg), 0);
  if (err < 0)
   return err;

  *data = be32_to_cpu(reg);
  if (*data & CLOCK_STATUS_MASK)
   break;


  msleep(50);
 }


 if (trial >= 5)
  return -EAGAIN;

 return 0;
}
