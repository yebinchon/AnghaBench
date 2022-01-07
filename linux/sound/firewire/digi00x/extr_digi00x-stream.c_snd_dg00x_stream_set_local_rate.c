
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int unit; } ;
typedef int reg ;
typedef int __be32 ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 scalar_t__ DG00X_ADDR_BASE ;
 scalar_t__ DG00X_OFFSET_LOCAL_RATE ;
 int EINVAL ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_be32 (unsigned int) ;
 unsigned int* snd_dg00x_stream_rates ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

int snd_dg00x_stream_set_local_rate(struct snd_dg00x *dg00x, unsigned int rate)
{
 __be32 reg;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(snd_dg00x_stream_rates); i++) {
  if (rate == snd_dg00x_stream_rates[i])
   break;
 }
 if (i == ARRAY_SIZE(snd_dg00x_stream_rates))
  return -EINVAL;

 reg = cpu_to_be32(i);
 return snd_fw_transaction(dg00x->unit, TCODE_WRITE_QUADLET_REQUEST,
      DG00X_ADDR_BASE + DG00X_OFFSET_LOCAL_RATE,
      &reg, sizeof(reg), 0);
}
