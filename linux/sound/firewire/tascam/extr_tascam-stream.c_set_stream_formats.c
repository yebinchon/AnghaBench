
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int unit; } ;
typedef int reg ;
typedef int __be32 ;


 int TCODE_WRITE_QUADLET_REQUEST ;
 scalar_t__ TSCM_ADDR_BASE ;
 scalar_t__ TSCM_OFFSET_SET_OPTION ;
 int cpu_to_be32 (int) ;
 int enable_data_channels (struct snd_tscm*) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int set_stream_formats(struct snd_tscm *tscm, unsigned int rate)
{
 __be32 reg;
 int err;


 reg = cpu_to_be32(0x00200000);
 err = snd_fw_transaction(tscm->unit, TCODE_WRITE_QUADLET_REQUEST,
     TSCM_ADDR_BASE + TSCM_OFFSET_SET_OPTION,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 return enable_data_channels(tscm);
}
