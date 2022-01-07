
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int unit; } ;
typedef int data ;
typedef scalar_t__ __be32 ;


 scalar_t__ DG00X_ADDR_BASE ;
 scalar_t__ DG00X_OFFSET_ISOC_CHANNELS ;
 scalar_t__ DG00X_OFFSET_STREAMING_SET ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 scalar_t__ cpu_to_be32 (int) ;
 int msleep (int) ;
 int snd_fw_transaction (int ,int ,scalar_t__,scalar_t__*,int,int ) ;

__attribute__((used)) static void finish_session(struct snd_dg00x *dg00x)
{
 __be32 data;

 data = cpu_to_be32(0x00000003);
 snd_fw_transaction(dg00x->unit, TCODE_WRITE_QUADLET_REQUEST,
      DG00X_ADDR_BASE + DG00X_OFFSET_STREAMING_SET,
      &data, sizeof(data), 0);


 data = 0;
 snd_fw_transaction(dg00x->unit, TCODE_WRITE_QUADLET_REQUEST,
      DG00X_ADDR_BASE + DG00X_OFFSET_ISOC_CHANNELS,
      &data, sizeof(data), 0);



 msleep(50);
}
