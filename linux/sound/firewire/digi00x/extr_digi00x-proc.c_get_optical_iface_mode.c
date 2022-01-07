
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int unit; } ;
typedef enum snd_dg00x_optical_mode { ____Placeholder_snd_dg00x_optical_mode } snd_dg00x_optical_mode ;
typedef int data ;
typedef int __be32 ;


 scalar_t__ DG00X_ADDR_BASE ;
 scalar_t__ DG00X_OFFSET_OPT_IFACE_MODE ;
 int TCODE_READ_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int get_optical_iface_mode(struct snd_dg00x *dg00x,
      enum snd_dg00x_optical_mode *mode)
{
 __be32 data;
 int err;

 err = snd_fw_transaction(dg00x->unit, TCODE_READ_QUADLET_REQUEST,
     DG00X_ADDR_BASE + DG00X_OFFSET_OPT_IFACE_MODE,
     &data, sizeof(data), 0);
 if (err >= 0)
  *mode = be32_to_cpu(data) & 0x01;

 return err;
}
