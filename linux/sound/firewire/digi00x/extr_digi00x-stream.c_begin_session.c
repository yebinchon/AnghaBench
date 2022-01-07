
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct snd_dg00x {int unit; TYPE_2__ rx_resources; TYPE_1__ tx_resources; } ;
typedef int data ;
typedef int __be32 ;


 scalar_t__ DG00X_ADDR_BASE ;
 scalar_t__ DG00X_OFFSET_ISOC_CHANNELS ;
 scalar_t__ DG00X_OFFSET_STREAMING_SET ;
 scalar_t__ DG00X_OFFSET_STREAMING_STATE ;
 int TCODE_READ_QUADLET_REQUEST ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int msleep (int) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int begin_session(struct snd_dg00x *dg00x)
{
 __be32 data;
 u32 curr;
 int err;


 data = cpu_to_be32((dg00x->tx_resources.channel << 16) |
      dg00x->rx_resources.channel);
 err = snd_fw_transaction(dg00x->unit, TCODE_WRITE_QUADLET_REQUEST,
     DG00X_ADDR_BASE + DG00X_OFFSET_ISOC_CHANNELS,
     &data, sizeof(data), 0);
 if (err < 0)
  return err;

 err = snd_fw_transaction(dg00x->unit, TCODE_READ_QUADLET_REQUEST,
     DG00X_ADDR_BASE + DG00X_OFFSET_STREAMING_STATE,
     &data, sizeof(data), 0);
 if (err < 0)
  return err;
 curr = be32_to_cpu(data);

 if (curr == 0)
  curr = 2;

 curr--;
 while (curr > 0) {
  data = cpu_to_be32(curr);
  err = snd_fw_transaction(dg00x->unit,
      TCODE_WRITE_QUADLET_REQUEST,
      DG00X_ADDR_BASE +
      DG00X_OFFSET_STREAMING_SET,
      &data, sizeof(data), 0);
  if (err < 0)
   break;

  msleep(20);
  curr--;
 }

 return err;
}
