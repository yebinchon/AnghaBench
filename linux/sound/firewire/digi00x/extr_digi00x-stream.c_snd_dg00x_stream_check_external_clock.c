
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int unit; } ;
typedef int reg ;
typedef int __be32 ;


 scalar_t__ DG00X_ADDR_BASE ;
 scalar_t__ DG00X_OFFSET_DETECT_EXTERNAL ;
 int TCODE_READ_QUADLET_REQUEST ;
 scalar_t__ be32_to_cpu (int ) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

int snd_dg00x_stream_check_external_clock(struct snd_dg00x *dg00x, bool *detect)
{
 __be32 reg;
 int err;

 err = snd_fw_transaction(dg00x->unit, TCODE_READ_QUADLET_REQUEST,
     DG00X_ADDR_BASE + DG00X_OFFSET_DETECT_EXTERNAL,
     &reg, sizeof(reg), 0);
 if (err >= 0)
  *detect = be32_to_cpu(reg) > 0;

 return err;
}
